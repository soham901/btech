import { HelloWorld } from "./components/hello-world";
import LegacyComp from "./components/legacy-comp";

const App = () => {
  return (
    <div className="">
      <HelloWorld />
      <LegacyComp />
    </div>
  );
};

export default App;
