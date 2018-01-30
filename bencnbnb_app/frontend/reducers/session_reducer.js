import {RECEIVE_CURRENT_USER} from '../actions/session_actions';

  const _nullSession = {
      currentUser: null
  };

const sessionReducer = (state=_nullSession,action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_CURRENT_USER:
      let newState = Object.assign({},action.currentUser);
      return newState;
    default:
      return state;
    }
};

export default sessionReducer;
