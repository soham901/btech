import { useState } from "react";
import { GenericList } from "./generic-list";

type Faculty = {
    name: string;
    department: string;
    title: string;
    email: string;
};

const data: Faculty[] = [
    {
        name: "Dr. John Doe",
        department: "Computer Science",
        title: "Professor",
        email: "drjohn@cs.university.edu",
    },
    {
        name: "Dr. Jane Smith",
        department: "Computer Science",
        title: "Professor",
        email: "drjane@cs.university.edu",
    },
    {
        name: "Dr. Bob Johnson",
        department: "Computer Science",
        title: "Professor",
        email: "drbob@cs.university.edu",
    },
    {
        name: "Dr. Jane Doe",
        department: "Computer Science",
        title: "Professor",
        email: "drjane@cs.university.edu",
    },
    {
        name: "Dr. Bob Smith",
        department: "Computer Science",
        title: "Professor",
        email: "drbob@cs.university.edu",
    },
    {
        name: "Dr. Jane Johnson",
        department: "Computer Science",
        title: "Professor",
        email: "drjane@cs.university.edu",
    },
    {
        name: "Dr. Bob Doe",
        department: "Computer Science",
        title: "Professor",
        email: "drbob@cs.university.edu",
    },
];

const Card = ({ name, department, title, email }: Faculty) => {
    return (
        <div className="p-4 border rounded-lg shadow">
            <div className="font-bold text-lg">{name}</div>
            <div className="text-gray-600">{department}</div>
            <div className="text-gray-500">{title}</div>
            <div className="text-blue-600">{email}</div>
        </div>
    );
};

const TableRow = ({ name, department, title, email }: Faculty) => {
    return (
        <>
            <td>{name}</td>
            <td>{department}</td>
            <td>{title}</td>
            <td>{email}</td>
        </>
    );
};

const TableHeader = () => {
    return (
        <>

            <th className="border border-gray-300 px-4 py-2">Name</th>
            <th className="border border-gray-300 px-4 py-2">Department</th>
            <th className="border border-gray-300 px-4 py-2">Title</th>
            <th className="border border-gray-300 px-4 py-2">Email</th>
        </>
    );
};

type View = "grid" | "table";

const FacultyList = () => {
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

export default FacultyList;
