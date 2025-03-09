import { JSX } from "react";

type CRUDComponentProps<T> = {
    data: T[];
    renderCard: (item: T, onDelete: (id: string) => void, onEdit: (id: string, item: T) => void) => JSX.Element;
    renderForm: (onAdd: (item: T) => void, onEdit: (id: string, item: T) => void) => JSX.Element;
    onAdd: (item: T) => void;
    onEdit: (id: string, item: T) => void;
    onDelete: (id: string) => void;
};

export function CRUDComponent<T extends { id: string }>({
    data,
    renderForm,
    renderCard,
    onAdd,
    onEdit,
    onDelete,
}: CRUDComponentProps<T>) {
    return (
        <div>
            {renderForm(onAdd, onEdit)}
            <ul>
                {data.map((item) => (
                    <li key={item.id}>
                        {renderCard(item, onDelete, onEdit)}
                    </li>
                ))}
            </ul>
        </div>
    );
}
