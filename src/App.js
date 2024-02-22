import logo from './logo.svg';
import './App.css';

const user = {
  name: 'Vamsee Krishna Kasani'
};


function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          Sample React app for testing as a Dockerized application with Jenkins deployment by {user.name}.
        </p>
        <a
          className="App-link"
          href="https://github.com/krishna-krish3/Dockerized-Web-Application"
          target="_blank"
          rel="noopener noreferrer"
        >
          See more project related files in github
        </a>
      </header>
    </div>
  );
}

export default App;