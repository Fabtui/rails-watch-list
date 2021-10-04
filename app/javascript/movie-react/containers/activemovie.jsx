import React, { Component } from 'react';
import { connect } from 'react-redux';
import {Link} from 'react-router-dom';

class ActiveMovie extends Component {

  render() {
    if (this.props.activeMovie === null) {
      return (
        <div className="active-movie">
          <p>Select a movie...</p>
        </div>
      );
    }
    const link = `/movies/${this.props.activeMovie.id}`
    return (
        <div className="activemovie-container">
          <div className="active-movie-poster">
            <img src={this.props.activeMovie.poster_url}></img>
          </div>
          <div className="active-movie-infos">
            <div className="active-movie-title">
              <a href={link} class="active">{this.props.activeMovie.title}</a>
            </div>
            <div className="active-movie-overview">
              <h2>{this.props.activeMovie.overview}</h2>
            </div>
            <h3>{this.props.activeMovie.year}</h3>
            <h3>{this.props.activeMovie.genre}</h3>
            <h3>{this.props.activeMovie.director}</h3>
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
