import Nav from "./components/nav";
import SchedulerPage from "./components/schedulerPage";
// import { Route, Switch } from "react-router-dom"

function App() {
  return (
    <div className="App">
      <header>
        <Nav />
      </header>
      <SchedulerPage />
    </div>
  );
}

export default App;
