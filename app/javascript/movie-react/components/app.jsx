import React, { Component } from 'react';
import MovieList from '../containers/movielist';
import ActiveMovie from '../containers/activemovie';

class App extends Component {
  render() {
    return (
      <div className="movie-app-container">
        <MovieList />
        <ActiveMovie />
      </div>
    );
  }
}

export default App;
