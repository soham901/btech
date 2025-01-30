export const GenericList = <T,>({
    data,
    renderCard,
    renderRow,
    renderHeader,
    layout = "grid",
}: {
    data: T[];
    renderCard?: (item: T) => JSX.Element;
    renderRow?: (item: T) => JSX.Element;
    renderHeader?: () => JSX.Element;
    layout?: "table" | "grid";
}) => {
    if (layout === "grid") {
        if (!renderCard) {
            throw new Error("Card component must be provided when using 'grid' layout.");
        }

        return (
            <div className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-8 bg-gray-100 p-6">
                {data.map((item, index) => (
                    <div key={index}>{renderCard(item)}</div>
                ))}
            </div>
        );
    }

    if (layout === "table") {
        if (!renderRow) {
            throw new Error("renderRow function must be provided when using 'table' layout.");
        }

        if (!renderHeader) {
            throw new Error("renderHeader function must be provided when using 'table' layout.");
        }

        return (
            <table className="w-full border-collapse border border-gray-300">
                <thead>
                    <tr className="bg-gray-200">
                        {renderHeader()}
                    </tr>
                </thead>
                <tbody>
                    {data.map((item, index) => (
                        <tr key={index} className="border border-gray-300">
                            {renderRow(item)}
                        </tr>
                    ))}
                </tbody>
            </table>
        );
    }

    throw new Error("Invalid layout provided.");
};
