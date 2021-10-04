import React, { Component } from 'react';
import { bindActionCreators } from 'redux';
import { connect } from 'react-redux';
import { setMovies } from '../actions';
import MovieCard from './moviecard';


class MovieList extends Component {
  componentWillMount() {
    this.props.setMovies();
  }

  render() {
    if (!this.props.movies) {
      return null
    }
    return (
        <div className="movie-list">
          {this.props.movies.map((movie) => <MovieCard movie={movie} key={movie.title} selectMovie={this.props.selectMovie}/>)}
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
