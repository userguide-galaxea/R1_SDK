
"use strict";

let BoundingBox2Di = require('./BoundingBox2Di.js');
let BoundingBox2Df = require('./BoundingBox2Df.js');
let PosTrackStatus = require('./PosTrackStatus.js');
let Keypoint2Di = require('./Keypoint2Di.js');
let Keypoint3D = require('./Keypoint3D.js');
let RGBDSensors = require('./RGBDSensors.js');
let Skeleton3D = require('./Skeleton3D.js');
let Skeleton2D = require('./Skeleton2D.js');
let Object = require('./Object.js');
let PlaneStamped = require('./PlaneStamped.js');
let BoundingBox3D = require('./BoundingBox3D.js');
let Keypoint2Df = require('./Keypoint2Df.js');
let ObjectsStamped = require('./ObjectsStamped.js');

module.exports = {
  BoundingBox2Di: BoundingBox2Di,
  BoundingBox2Df: BoundingBox2Df,
  PosTrackStatus: PosTrackStatus,
  Keypoint2Di: Keypoint2Di,
  Keypoint3D: Keypoint3D,
  RGBDSensors: RGBDSensors,
  Skeleton3D: Skeleton3D,
  Skeleton2D: Skeleton2D,
  Object: Object,
  PlaneStamped: PlaneStamped,
  BoundingBox3D: BoundingBox3D,
  Keypoint2Df: Keypoint2Df,
  ObjectsStamped: ObjectsStamped,
};
