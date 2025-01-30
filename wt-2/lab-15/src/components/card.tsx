import { FC } from "react";
import { Product } from "../types/Product";

type Props = Product & {
    isDisplay?: boolean
};

const Card: FC<Props> = ({ title, description, image, price, isDisplay = true }) => {
    return isDisplay && (
        <div className="flex flex-col items-center justify-between rounded-xl p-6 bg-zinc-100 cursor-pointer shadow-lg border border-gray-200 transition-transform transform hover:scale-105 hover:shadow-xl">
            <img
                src={image}
                alt={title}
                className="w-28 h-28 object-cover rounded-lg mb-4"
            />
            <h2 className="text-lg font-semibold text-gray-900 mb-2 text-center">
                {title}
            </h2>
            <p className="text-sm text-gray-600 line-clamp-2 mb-4 text-center">
                {description}
            </p>
            <p className="text-base font-medium text-gray-800">Price: {price}</p>
        </div>
    );
};

export default Card;
