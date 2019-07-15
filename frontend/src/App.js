import React, { Component } from 'react';
import './App.css';
import GamesContainer from './components/GamesContainer';

class App extends Component {
  render() {
    return (
      <div className="App">
        <header className="App-header">
          <h1 className="App-title">Hello!</h1>
        </header>
        <GamesContainer />
      </div>
    );
  }
}

export default App;
