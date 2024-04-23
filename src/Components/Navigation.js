// src/components/Navigation.js
import React from 'react';
import { Link } from 'react-router-dom';

function Navigation() {
  return (
    <nav>
      <Link to="/">Home</Link>
      <Link to="/login">Login</Link>
    </nav>
  );
}

export default Navigation;
