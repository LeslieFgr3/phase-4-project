import React from "react";
// import { NavLink } from "react-router-dom";
// import ReactDOM from "react-dom";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faHouse } from "@fortawesome/free-solid-svg-icons";

const element = <FontAwesomeIcon icon={faHouse} />;

function nav() {
  return (
    <ul className="nav-list">
      <li className="nav-item"></li>
      <li className="nav-item">
        {/* <NavLink exact to="/" activeStyle={{ background: "#8be3e1" }}> */}
        {element}
        {/* </NavLink> */}
      </li>
      <li className="nav-item">
        {/* <NavLink to="/about_app" activeStyle={{ background: "lightgray" }}> */}
        Login
        {/* </NavLink> */}
      </li>
      <li className="nav-item">
        {/* <NavLink to="/user_form" activeStyle={{ background: "lightgray" }}> */}
        Signup
        {/* </NavLink> */}
      </li>
    </ul>
  );
}

export default nav;
