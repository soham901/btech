import { useEffect, useState } from "react";
import Card from "./components/card";
import { mockData } from "./mockdata";
import { Product } from "./types/Product";

const fetchData: () => Promise<Product[]> = async () => {
  // const res = await fetch("http://fakestoreapi.com/products")
  // return await res.json()
  await new Promise((resolve) => setTimeout(resolve, 1000));
  return new Promise((resolve) => resolve(mockData));
};

const App = () => {
  const [data, setData] = useState<Product[]>([]);
  const [isLoading, setIsLoading] = useState(false);

  const refetchData = () => {
    setIsLoading(true);
    fetchData()
      .then((data) => setData(data))
      .finally(() => setIsLoading(false));
  };

  useEffect(() => {
    refetchData();
  }, []);

  return (
    <div className="p-8 container space-y-2">
      <div className="flex justify-around items-center">
        <div className="text-2xl font-bold mb-4">Product List</div>
        <button className="bg-blue-500 hover:bg-blue-700 text-white font-bold rounded px-2 py-1"
          onClick={() => refetchData()}>Refetch</button>
      </div>
      {isLoading ? (
        "Loading..."
      ) : (
        <div className="grid grid-cols-4 gap-8">
          {data.map((item) => (
            <Card key={item.title} isDisplay {...item} />
          ))}
        </div>
      )}
    </div>
  );
};

export default App;
