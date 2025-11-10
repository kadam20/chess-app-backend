const gulp = require("gulp");
const env = require("gulp-env");

// Helper function to set environment variables
function setEnv(vars) {
  return (cb) => {
    env.set(vars);
    cb();
  };
}
