import { useEffect, useState } from "react";
import { CRUDComponent } from "./generator";

type Faculty = {
    id: string;
    name: string;
    salary: number;
    department: string;
}

const generateId = () => crypto.randomUUID()

function FacultyForm({
    onAdd,
    onEdit,
    editingProduct,
}: {
    onAdd: (product: Faculty) => void;
    onEdit: (id: string, product: Faculty) => void;
    editingProduct?: Faculty;
}) {
    const [data, setData] = useState<Partial<Omit<Faculty, "id">>>(editingProduct ? {
        ...editingProduct
    } : {});

    const handleSubmit = () => {
        if (editingProduct) {
            onEdit(editingProduct.id, { ...editingProduct, ...data } as Faculty);
        } else {
            onAdd({ ...data, id: generateId() } as Faculty);
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
                type="text"
                placeholder="Department"
                value={data.department || ""}
                onChange={(e) => setData({ ...data, department: e.target.value})}
            />
            <input
                type="number"
                placeholder="Salary"
                value={data.salary || ""}
                onChange={(e) => setData({ ...data, salary: parseInt(e.target.value) })}
            />
            <button onClick={handleSubmit}>
                {editingProduct ? "Save Changes" : "Add"}
            </button>
        </div>
    );
}

export default function FacultiesPage() {
    const initialData = JSON.parse(localStorage.getItem("faculties") ?? "[]")
    const [data, setData] = useState<Faculty[]>(initialData);

    useEffect(() => {
        localStorage.setItem("faculties", JSON.stringify(data))
    }, [data])

    const [editingId, setEditingId] = useState<string | undefined>();

    const handleAdd = (product: Faculty) => {
        setData([...data, product]);
    };

    const handleDelete = (id: string) => {
        setData(data.filter((product) => product.id !== id));
    };

    const handleEdit = (id: string, product: Faculty) => {
        setData(data.map((p) => (p.id === id ? product : p)));
    };

    const renderCard = (product: Faculty, onDelete: (id: string) => void) => (
        <div>
            {product.id} - {product.name} - {product.department} - {product.salary}
            <button onClick={() => onDelete(product.id)}>Delete</button>
            <button onClick={() => {
                setEditingId(product.id);
            }}>Edit</button>
        </div>
    );

    const editingProduct = editingId ? data.find((product) => product.id === editingId) : undefined;

    const renderForm = (onAdd: (product: Faculty) => void, onEdit: (id: string, product: Faculty) => void) => (
        <FacultyForm
            onAdd={onAdd}
            onEdit={onEdit}
            editingProduct={editingProduct}
            key={editingId}
        />
    );

    return (
        <div>
            <h1>List of Faculties ({data.length})</h1>
            {data.length === 0 && (<button onClick={() => {
                setData([
                    { id: generateId(), name: "FACULTY 1", department: "CS", salary: 12300}
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
