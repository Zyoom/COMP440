import React from 'react';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import EmailList from './Components/EmailList';
import EmailDetails from './Components/EmailDetails';
import Login from './Components/Login';
import Navigation from './Components/Navigation';


function App() {
  return (
    <Router>
      <Navigation />
      <Routes>  // Replace Switch with Routes
        <Route path="/" element={<EmailList />} />
        <Route path="/email/:id" element={<EmailDetails />} />
        <Route path="/login" element={<Login />} />
      </Routes>
    </Router>
  );
}

export default App;