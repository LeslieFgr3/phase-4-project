import Nav from "./components/nav";
import SchedulerPage from "./components/schedulerPage";
import LoginForm from "./components/LoginForm";
import React, {useEffect, useState } from "react";

function App() {

  const [user, setUser] = useState(null);

  useEffect(() => {
    // auto-login
    fetch("/users").then((r) => {
      if (r.ok) {
        r.json().then((user) => setUser(user));
      }
    });
  }, []);





  return (
    <div className="App">
      <header>
        <Nav />
      </header>
      <LoginForm />
      <SchedulerPage />
    </div>
    
  );
}

export default App;
