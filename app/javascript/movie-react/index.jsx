import React from 'react';
import ReactDOM from 'react-dom';
import { Provider } from 'react-redux';
import { createStore, combineReducers, applyMiddleware, compose } from 'redux';
import { logger } from 'redux-logger';
import reduxPromise from 'redux-promise';


import '../assets/stylesheets/application.scss';
import App from './components/app';

// import flatsReducer from './reducers/flats_reducer';
// import selectedFlatReducer from './reducers/selected_flat_reducer';

const reducers = combineReducers({
  // flats: flatsReducer,
  // selectedFlat: selectedFlatReducer
});

const middlewares = applyMiddleware(logger, reduxPromise);

ReactDOM.render(
  console.log('ok')
  <Provider store={createStore(reducers, {}, middlewares)}>
    <App />
  </Provider>,
  document.getElementById('root'));
