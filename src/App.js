//import logo from './logo.svg';
import './App.css';
import * as React from 'react';
import { Routes, Route } from 'react-router-dom';
import Home from './Home';
import Register from './Register';

function App() {
  return (
  <div className="App">
    <Routes>
      <Route path="/" element={<Home />} />
      <Route path="/Register" element={<Register />} />
    </Routes>
  </div>
  );
}
 export default App;