import { useState } from "react";
import { GenericList } from "./generic-list";

type Student = {
    name: string;
    department: string;
    enrollno: number;
    image: string;
};

const data: Student[] = [
    {
        name: "John Doe",
        department: "B.tech CSE",
        enrollno: 123451342,
        image: "https://example.com/john.jpg",
    },
    {
        name: "Jane Smith",
        department: "B.tech CSE",
        enrollno: 234512342,
        image: "https://example.com/jane.jpg",
    },
    {
        name: "Bob Johnson",
        department: "B.tech CSE",
        enrollno: 34512342,
        image: "https://example.com/bob.jpg",
    },
];

const Card = ({ name, department, enrollno }: Student) => {
    return (
        <div className="p-4 border rounded-lg shadow">
            <div className="font-bold text-lg">{name}</div>
            <div className="text-gray-600">{department}</div>
            <div className="text-gray-500">{enrollno}</div>
        </div>
    );
};

const TableRow = ({ department, enrollno, name }: Student) => {
    return (
        <>
            <td>{enrollno}</td>
            <td>{name}</td>
            <td>{department}</td>
        </>
    );
};

const TableHeader = () => {
    return (
        <>
            <th className="border border-gray-300 px-4 py-2">Enroll No</th>
            <th className="border border-gray-300 px-4 py-2">Name</th>
            <th className="border border-gray-300 px-4 py-2">Department</th>
        </>
    );
};

type View = "grid" | "table";

const StudentList = () => {
    const [activeView, setActiveView] = useState<View>("grid");

    return (
        <>
            <div className="">
                <select
                    value={activeView}
                    onChange={(e) => setActiveView(e.target.value as View)}
                >
                    <option value="grid">Grid View</option>
                    <option value="table">Table View</option>
                </select>
            </div>

            <GenericList
                layout={activeView}
                renderRow={(props) => <TableRow {...props} />}
                renderCard={(props) => <Card {...props} />}
                renderHeader={() => <TableHeader />}
                data={data}
            />
        </>
    );
};

export default StudentList;
