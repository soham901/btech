import { StrictMode } from 'react'
import { createRoot } from 'react-dom/client'
import './index.css'
import App from './App.tsx'
import { BrowserRouter, Route, Routes } from 'react-router'
import ProductsPage from './pages/products.tsx'
import FacultiesPage from './pages/faculties.tsx'
import StudentsPage from './pages/students.tsx'

createRoot(document.getElementById('root')!).render(
  <StrictMode>
    <BrowserRouter>
    <Routes>
    <Route path='/' element={<App />} />
    <Route path='/products' element={<ProductsPage />} />
    <Route path='/faculties' element={<FacultiesPage />} />
    <Route path='/students' element={<StudentsPage />} />
    </Routes>
    </BrowserRouter>
  </StrictMode>,
)
