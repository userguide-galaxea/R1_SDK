
"use strict";

let RGBDSensors = require('./RGBDSensors.js');
let PosTrackStatus = require('./PosTrackStatus.js');
let PlaneStamped = require('./PlaneStamped.js');
let BoundingBox2Df = require('./BoundingBox2Df.js');
let Skeleton3D = require('./Skeleton3D.js');
let Skeleton2D = require('./Skeleton2D.js');
let Keypoint2Df = require('./Keypoint2Df.js');
let ObjectsStamped = require('./ObjectsStamped.js');
let Object = require('./Object.js');
let BoundingBox3D = require('./BoundingBox3D.js');
let BoundingBox2Di = require('./BoundingBox2Di.js');
let Keypoint3D = require('./Keypoint3D.js');
let Keypoint2Di = require('./Keypoint2Di.js');

module.exports = {
  RGBDSensors: RGBDSensors,
  PosTrackStatus: PosTrackStatus,
  PlaneStamped: PlaneStamped,
  BoundingBox2Df: BoundingBox2Df,
  Skeleton3D: Skeleton3D,
  Skeleton2D: Skeleton2D,
  Keypoint2Df: Keypoint2Df,
  ObjectsStamped: ObjectsStamped,
  Object: Object,
  BoundingBox3D: BoundingBox3D,
  BoundingBox2Di: BoundingBox2Di,
  Keypoint3D: Keypoint3D,
  Keypoint2Di: Keypoint2Di,
};
