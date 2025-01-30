import { ReactNode, useCallback, useState } from "react";
import "./App.css";
import DisplayArray from "./components/01";
import FacultyList from "./components/02";
import StudentList from "./components/03";
import ProductList from "./components/04";

const tabs: {
  title: string;
  component: ReactNode;
}[] = [
    {
      title: "Display Array",
      component: <DisplayArray data={[1, 2, 3, 4, 5]} />,
    },
    {
      title: "Faculty List",
      component: <FacultyList />,
    },
    {
      title: "Student List",
      component: <StudentList />,
    },
    {
      title: "Product List",
      component: <ProductList />,
    },
  ];

function App() {
  const [activeTab, setActiveTab] = useState(0);

  const ActiveComponent = useCallback(() => {
    return tabs[activeTab].component;
  }, [activeTab]);

  return (
    <>
      <div className="">
        {tabs.map((tab, index) => (
          <button
            key={index}
            className={`px-4 rounded-md border border-gray-600 p-2 m-2 ${index === activeTab ? "bg-gray-600 text-white" : ""
              }`}
            onClick={() => setActiveTab(index)}
          >
            {tab.title}
          </button>
        ))}
      </div>
      <div className="h-[37rem] p-4 overflow-y-scroll">
        <ActiveComponent />
      </div>
    </>
  );
}

export default App;
