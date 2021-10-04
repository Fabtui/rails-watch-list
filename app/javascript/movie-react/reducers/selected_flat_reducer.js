import { SELECT_FLAT } from "../actions";

export default function(state, action) {
  if (state === undefined) {
    return null;
  }
  if (action.type === SELECT_FLAT) {
    return action.payload;
  } else {
    return state;
  }
}
