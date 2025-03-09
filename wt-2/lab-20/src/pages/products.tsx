import { useEffect, useState } from "react";
import { CRUDComponent } from "./generator";

type Product = {
    id: string;
    name: string;
    price: number;
    quantity: number;
    description: string;
}

const generateId = () => crypto.randomUUID()

function ProductForm({
    onAdd,
    onEdit,
    editingProduct,
}: {
    onAdd: (product: Product) => void;
    onEdit: (id: string, product: Product) => void;
    editingProduct?: Product;
}) {
    const [data, setData] = useState<Partial<Omit<Product, "id">>>(editingProduct ? {
        name: editingProduct.name,
        price: editingProduct.price,
        quantity: editingProduct.quantity,
        description: editingProduct.description,
    } : {});

    const handleSubmit = () => {
        if (editingProduct) {
            onEdit(editingProduct.id, { ...editingProduct, ...data } as Product);
        } else {
            onAdd({ ...data, id: generateId() } as Product);
        }
    };

    return (
        <div>
            <input
                type="text"
                placeholder="Name"
                value={data.name || ""}
                onChange={(e) => setData({ ...data, name: e.target.value })}
            />
            <input
                type="number"
                placeholder="Price"
                value={data.price || ""}
                onChange={(e) => setData({ ...data, price: parseInt(e.target.value) })}
            />
            <input
                type="number"
                placeholder="Quantity"
                value={data.quantity || ""}
                onChange={(e) => setData({ ...data, quantity: parseInt(e.target.value) })}
            />
            <input
                type="text"
                placeholder="Description"
                value={data.description || ""}
                onChange={(e) => setData({ ...data, description: e.target.value })}
            />
            <button onClick={handleSubmit}>
                {editingProduct ? "Save Changes" : "Add"}
            </button>
        </div>
    );
}

export default function ProductsPage() {
    const initialData = JSON.parse(localStorage.getItem("deto") ?? "[]")
    const [data, setData] = useState<Product[]>(initialData);

    useEffect(() => {
        localStorage.setItem("deto", JSON.stringify(data))
    }, [data])

    const [editingId, setEditingId] = useState<string | undefined>();

    const handleAdd = (product: Product) => {
        setData([...data, product]);
    };

    const handleDelete = (id: string) => {
        setData(data.filter((product) => product.id !== id));
    };

    const handleEdit = (id: string, product: Product) => {
        setData(data.map((p) => (p.id === id ? product : p)));
    };

    const renderCard = (product: Product, onDelete: (id: string) => void) => (
        <div>
            {product.id} - {product.name} - {product.price} - {product.quantity} - {product.description}
            <button onClick={() => onDelete(product.id)}>Delete</button>
            <button onClick={() => {
                setEditingId(product.id);
            }}>Edit</button>
        </div>
    );

    const editingProduct = editingId ? data.find((product) => product.id === editingId) : undefined;

    const renderForm = (onAdd: (product: Product) => void, onEdit: (id: string, product: Product) => void) => (
        <ProductForm
            onAdd={onAdd}
            onEdit={onEdit}
            editingProduct={editingProduct}
            key={editingId}
        />
    );

    return (
        <div>
            <h1>List of Products ({data.length})</h1>
            {data.length === 0 && (<button onClick={() => {
                setData([
                    { id: generateId(), name: "Product 1", price: 100, quantity: 10, description: "Description 1" },
                    { id: generateId(), name: "Product 2", price: 200, quantity: 20, description: "Description 2" },
                    { id: generateId(), name: "Product 3", price: 200, quantity: 20, description: "Description 3" },
                ])
            }}>LOAD DATA</button>)}
            <CRUDComponent
                data={data}
                renderCard={renderCard}
                renderForm={renderForm}
                onAdd={handleAdd}
                onDelete={handleDelete}
                onEdit={handleEdit}
            />
        </div>
    );
}
