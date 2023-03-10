import { configureStore } from "@reduxjs/toolkit";
const robotState = {
  r_sho_roll: 0.0,
  r_sho_pitch: 0.0,
  r_el_pitch: 0.0,
  r_hip_roll: 0.0,
  r_hip_pitch: 0.0,
  r_hip_yaw: 0.0,
  r_knee_pitch: 0.0,
  r_ank_roll: 0.0,
  r_ank_pitch: 0.0,
  head_tilt: 0.0,
  head_pan: 0.0,
  l_sho_roll: 0.0,
  l_sho_pitch: 0.0,
  l_el_pitch: 0.0,
  l_hip_roll: 0.0,
  l_hip_pitch: 0.0,
  l_hip_yaw: 0.0,
  l_knee_pitch: 0.0,
  l_ank_roll: 0.0,
  l_ank_pitch: 0.0,
};

const robots = {
  Abi: robotState,
  Alfa: robotState,
  Robi: robotState,
};

const robotReducer = (state = robots, action) => {
  var value = parseFloat(action.value);
  console.log(action.robot + " " + action.type);
  return {
    ...state,
    [`${action.robot}`]: {
      ...state[`${action.robot}`],
      [`${action.type}`]: value,
    },
  };
};

const robotStore = configureStore({
  reducer: robotReducer,
  preloadedState: robots,
});

export default robotStore;
