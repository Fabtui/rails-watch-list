import { SET_FLATS } from "../actions";

const flatsReducer = (state, action) => {
  if (state === undefined) {
    return [];
  }

  if (action.type === SET_FLATS) {
    return action.payload;
  } else {
    return state;
  }

  // EQUAL TO
  // switch(action.type) {
  //   case 'SET_FLATS':
  //     return action.payloa d;
  //   default:
  //     return state;
  // }

};

export default flatsReducer;
