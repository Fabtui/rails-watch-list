import movies from '../../data/movies';

export const SET_MOVIES = 'SET_MOVIES';
export const MOVIE_SELECTED = 'MOVIE_SELECTED';

export function setMovies() {
  return {
    type: SET_MOVIES,
    payload: movies
  };
}

export default function selectMovie(movie) {
  return {
    type: MOVIE_SELECTED,
    payload: movie
  };
}
