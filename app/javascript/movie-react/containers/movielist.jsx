import React, { Component } from 'react';
import { bindActionCreators } from 'redux';
import { connect } from 'react-redux';
import { setMovies } from '../actions';
import { useState } from 'react';
import MovieCard from './moviecard';


class MovieList extends Component {

  componentWillMount() {
    this.props.setMovies();
  }

  render() {
    if (!this.props.movies) {
      return null
    }

    const [searchTerm, setSearchTerm] = "";
    const pulp = "Pulp Fiction"
    return (
        <div className="movie-list">
          <input type="text" onChange={(event) => {setSearchTerm(event.target.value);}}/>
          {this.props.movies.filter((val) => {
            if (searchTerm == "") {
              return val
            } else if (val.title.toLowerCase().includes(pulp.toLowerCase())) {
              return val
            }
          }).map((movie) => <MovieCard movie={movie} key={movie.title} selectMovie={this.props.selectMovie}/>)}
        </div>
    )
  }
}

function mapDispatchToProps(dispatch) {
  return bindActionCreators(
    { setMovies },
    dispatch
  );
}

function mapStateToProps(state) {
  return {
    movies: state.movies
  };
}

export default connect(mapStateToProps, mapDispatchToProps)(MovieList);
