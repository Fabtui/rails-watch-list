import React from 'react';
import ReactDOM from 'react-dom';
import { Provider } from 'react-redux';
import { createStore, combineReducers, applyMiddleware, compose } from 'redux';
import { logger } from 'redux-logger';
import reduxPromise from 'redux-promise';


// import '../assets/stylesheets/application.scss';
import App from './components/app';

import moviesReducer from './reducers/movies_reducer';
import activeMovieReducer from './reducers/active_movie_reducer';

const reducers = combineReducers({
  movies: moviesReducer,
  activeMovie: activeMovieReducer,
});

const middlewares = applyMiddleware(logger, reduxPromise);

ReactDOM.render(
  <Provider store={createStore(reducers, middlewares)}>
    <App />
  </Provider>,
  document.getElementById('root'));
