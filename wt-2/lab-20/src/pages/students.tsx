import { useEffect, useState } from "react";
import { CRUDComponent } from "./generator";

type Student = {
    id: string;
    name: string;
    age: number;
    grade: string;
    description: string;
}

const generateId = () => crypto.randomUUID()

function StudentForm({
    onAdd,
    onEdit,
    editingStudent,
}: {
    onAdd: (student: Student) => void;
    onEdit: (id: string, student: Student) => void;
    editingStudent?: Student;
}) {
    const [data, setData] = useState<Partial<Omit<Student, "id">>>(editingStudent ? {
        name: editingStudent.name,
        age: editingStudent.age,
        grade: editingStudent.grade,
        description: editingStudent.description,
    } : {});

    const handleSubmit = () => {
        if (editingStudent) {
            onEdit(editingStudent.id, { ...editingStudent, ...data } as Student);
        } else {
            onAdd({ ...data, id: generateId() } as Student);
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
                placeholder="Age"
                value={data.age || ""}
                onChange={(e) => setData({ ...data, age: parseInt(e.target.value) })}
            />
            <input
                type="text"
                placeholder="Grade"
                value={data.grade || ""}
                onChange={(e) => setData({ ...data, grade: e.target.value })}
            />
            <input
                type="text"
                placeholder="Description"
                value={data.description || ""}
                onChange={(e) => setData({ ...data, description: e.target.value })}
            />
            <button onClick={handleSubmit}>
                {editingStudent ? "Save Changes" : "Add"}
            </button>
        </div>
    );
}

export default function StudentsPage() {
    const initialData = JSON.parse(localStorage.getItem("students") ?? "[]");
    const [data, setData] = useState<Student[]>(initialData);

    useEffect(() => {
        localStorage.setItem("students", JSON.stringify(data));
    }, [data]);

    const [editingId, setEditingId] = useState<string | undefined>();

    const handleAdd = (student: Student) => {
        setData([...data, student]);
    };

    const handleDelete = (id: string) => {
        setData(data.filter((student) => student.id !== id));
    };

    const handleEdit = (id: string, student: Student) => {
        setData(data.map((s) => (s.id === id ? student : s)));
    };

    const renderCard = (student: Student, onDelete: (id: string) => void) => (
        <div key={student.id}>
            {student.id} - {student.name} - {student.age} - {student.grade} - {student.description}
            <button onClick={() => onDelete(student.id)}>Delete</button>
            <button onClick={() => setEditingId(student.id)}>Edit</button>
        </div>
    );

    const editingStudent = editingId ? data.find((student) => student.id === editingId) : undefined;

    const renderForm = (onAdd: (student: Student) => void, onEdit: (id: string, student: Student) => void) => (
        <StudentForm
            onAdd={onAdd}
            onEdit={onEdit}
            editingStudent={editingStudent}
            key={editingId}
        />
    );

    return (
        <div>
            <h1>List of Students ({data.length})</h1>
            {data.length === 0 && (
                <button onClick={() => {
                    setData([
                        { id: generateId(), name: "Student 1", age: 20, grade: "A", description: "Description 1" },
                        { id: generateId(), name: "Student 2", age: 21, grade: "B", description: "Description 2" },
                        { id: generateId(), name: "Student 3", age: 22, grade: "C", description: "Description 3" },
                    ]);
                }}>LOAD DATA</button>
            )}
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
