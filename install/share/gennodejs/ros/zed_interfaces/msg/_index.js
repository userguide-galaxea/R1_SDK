
"use strict";

let Keypoint3D = require('./Keypoint3D.js');
let PosTrackStatus = require('./PosTrackStatus.js');
let BoundingBox2Df = require('./BoundingBox2Df.js');
let ObjectsStamped = require('./ObjectsStamped.js');
let Skeleton3D = require('./Skeleton3D.js');
let Skeleton2D = require('./Skeleton2D.js');
let BoundingBox3D = require('./BoundingBox3D.js');
let BoundingBox2Di = require('./BoundingBox2Di.js');
let PlaneStamped = require('./PlaneStamped.js');
let Keypoint2Df = require('./Keypoint2Df.js');
let Keypoint2Di = require('./Keypoint2Di.js');
let Object = require('./Object.js');
let RGBDSensors = require('./RGBDSensors.js');

module.exports = {
  Keypoint3D: Keypoint3D,
  PosTrackStatus: PosTrackStatus,
  BoundingBox2Df: BoundingBox2Df,
  ObjectsStamped: ObjectsStamped,
  Skeleton3D: Skeleton3D,
  Skeleton2D: Skeleton2D,
  BoundingBox3D: BoundingBox3D,
  BoundingBox2Di: BoundingBox2Di,
  PlaneStamped: PlaneStamped,
  Keypoint2Df: Keypoint2Df,
  Keypoint2Di: Keypoint2Di,
  Object: Object,
  RGBDSensors: RGBDSensors,
};
