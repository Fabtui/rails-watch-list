import React, { Component } from 'react';
import { connect } from 'react-redux';

class ActiveMovie extends Component {
  render() {
    if (this.props.activeMovie === null) {
      return (
        <div className="active-movie">
          <p>Select a movie...</p>
        </div>
      );
    }
    return (
        <div className="activemovie-container">
          <div className="movie-poster">
            <img src={this.props.activeMovie.poster_url}></img>
          </div>
          <div className="movie-infos">
          <h1>{this.props.activeMovie.title}</h1>
            <div className="movie-show-overview">
              <h2>{this.props.activeMovie.overview}</h2>
            </div>
            <h3>{this.props.activeMovie.year}</h3>
            <h3>{this.props.activeMovie.genre}</h3>
            <h3>{this.props.activeMovie.director}</h3>
            <h3>{this.props.activeMovie.actor}</h3>
            <div className="movie-rating">
              <h3>{this.props.activeMovie.rating}</h3>
            </div>
          </div>
        </div>
    )
  }
}

function mapStateToProps(state) {
  return {
    activeMovie: state.activeMovie
  };
}

export default connect(mapStateToProps)(ActiveMovie);
