import { MOVIE_SELECTED } from "../actions";

const activeMovieReducer = (state, action) => {
  if (state === undefined) {
    return null;
  }

  if (action.type === MOVIE_SELECTED) {
    return action.payload;
  } else {
    return state;
  }
};

export default activeMovieReducer;
