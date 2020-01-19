import React from "react";
import logo from "./logo.svg";
import "./App.css";

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>Udacity-DevOpsEnginner-Capstone for Cloud DevOps Enginner</p>
        <p>Developed by 
          <a
            className="App-link"
            href="https://github.com/fabiotavarespr"
            target="_blank"
            rel="noopener noreferrer"
          >
            @fabiotavarespr
          </a>
        </p>
        <p>version 0.0.1</p>
      </header>
    </div>
  );
}

export default App;
