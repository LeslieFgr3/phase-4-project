import { Input } from "@mui/material";
import React, {useState} from "react";
import  FormField  from "../styles/FormField";



function LoginForm({onLogin}) {

    const [username, setUsername] = useState("");
    const [password, setPassword] = useState("");
    const [errors, setErrors] = useState([]);
    const [isLoading, setIsLoading] = useState([false]);

function handleSubmit(event) {
    event.preventDefault();
    setIsLoading(true);
    fetch("/login", {
        methog: "POST",
        headers: {
            "Content-Type": "application/json",
        },
        body: JSON.stringify({username, password}),
 }).then((r) => { 
    setIsLoading(false);
    if (r.ok) {
        r.json().then((user) => onLogin(user));
    } else {
        r.json().then((err) => setErrors(err.errors));
         }

 });
}

return (
    <form onSubmit={handleSubmit}>
       
        <label htmlFor="Username">Username</label>
        <input
        type="text"
        id="username"
        autoComplete="off"
        value={username}
        onChange={(e) => setUsername(e.target.value)}
        />
       
       
        <button variant="fill" color="primary" type="submit">
            {isLoading ? "Loading..." : "Login"}
        </button>
       
      
       
    
     
    
      
    </form>
  );
}
       
export default LoginForm;


