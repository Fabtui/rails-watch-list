import movies from '../../data/movies';

export const SET_MOVIES = 'SET_MOVIES';
export const MOVIE_SELECTED = 'MOVIE_SELECTED';

export function setMovies() {
  const promise = fetch('/api/v1/movies')
    .then(response => response.json())
  return {
    type: SET_MOVIES,
    payload: promise
  };
}

export default function selectMovie(movie) {
  const promise = fetch(`/api/v1/movies/${movie}`)
    .then(response => response.json())
  return {
    type: MOVIE_SELECTED,
    payload: movie
  };
}
