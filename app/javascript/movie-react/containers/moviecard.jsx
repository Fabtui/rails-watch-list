import React, { Component } from 'react';
import { connect } from 'react-redux';
import { bindActionCreators } from 'redux';

import selectMovie from '../actions';

const MovieCard = (props) => {
  return (
      <div className='movie-card' style={{ backgroundImage:`url(${props.movie.poster_url})`}} onClick={() => props.selectMovie(props.movie)} >
        <div className="movie-title">
          <h1>{props.movie.title}</h1>
        </div>
      </div>
  );
}

function mapDispatchToProps(dispatch) {
  return bindActionCreators({ selectMovie }, dispatch);
}

export default connect(null, mapDispatchToProps)(MovieCard);
