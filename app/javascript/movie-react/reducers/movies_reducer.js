import { SET_MOVIES } from "../actions";

export default function(state, action) {
  if (state === undefined) {
    return null;
  }
  if (action.type === SET_MOVIES) {
    return action.payload;
  } else {
    return state;
  }
}
