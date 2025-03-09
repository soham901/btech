import { Link } from "react-router";

export default function App() {
  return (
    <div style={{display: "flex", justifyContent: "center", alignItems: "center", gap: "12px", width: "100vw"}}>
      <Link style={{color: "white"}} to="/products">Products</Link>
      <Link style={{color: "white"}} to="/faculties">Faculties</Link>
      <Link style={{color: "white"}} to="/students">Students</Link>
    </div>
  )
}
