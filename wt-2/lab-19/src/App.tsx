import { useRef, useState } from "react";
// import { CalcService } from "./lib/CalcService";

const Calclulator = () => {
  const resultRef = useRef<HTMLInputElement>(null);
  const handleClick = (value: string) => {
    if (resultRef.current) {
      resultRef.current.scrollLeft = resultRef.current.scrollWidth;
    }
    
    if (value === "C") {
      setResult("");
    } else if (value === "=") {
      try {
        setResult(eval(result.replace(/x/g, "*")));
      } catch {
        setResult("Error");
      }
    } else {
      const operators = ["+", "-", "x", "/"];
      const beforeCh = result[result.length - 1];

      if (operators.includes(beforeCh) && operators.includes(value)) {
        setResult(result.slice(0, -1) + value);
      } else {
        setResult(result + value);
      }
    }
  }

  const layout = [
    ["7", "8", "9", "+"],
    ["4", "5", "6", "-"],
    ["1", "2", "3", "x"],
    ["C", "0", "=", "/"],
  ];

  const [result, setResult] = useState("56483646474578567565354634");

  return (
    <div>
      <h1 className="title">Sadu Calcy</h1>
      <div
  style={{
    marginBottom: "1rem",
    height: "64px",
    width: "300px",
    overflow: "hidden",
    padding: "0 .5rem",
    borderRadius: ".4rem",
    border: "1px solid black",
    backgroundColor: "#1a1a1a",
    display: "flex",
    alignItems: "center",
  }}
>
  <input
    ref={resultRef}
    value={result}
    readOnly
    style={{
      fontSize: "2rem",
      color: "white",
      whiteSpace: "nowrap",
      border: "none",
      width: "100%",
      backgroundColor: "transparent",
      overflowX: "scroll",
      textAlign: "right",
      outline: "none",
    }}
  />
</div>
      <div style={{ display: "grid", gridTemplateColumns: "repeat(1, 1fr)", gap: ".5rem" }}>
        {layout.map((row) => (
          <div style={{ display: "grid", gridTemplateColumns: "repeat(4, 1fr)", gap: ".5rem" }}>
            {row.map((label) => <button style={{ border: "1px solid black" }} className="btn" onClick={() => handleClick(label)}>{label}</button>)}
          </div>
        ))}
      </div>
    </div>
  )
}

export default Calclulator
