'use strict';

var url = require('url');


var Default = require('./DefaultService');


module.exports.getDwarves = function getDwarves (req, res, next) {
  Default.getDwarves(req.swagger.params, res, next);
};

module.exports.postDwarf = function postDwarf (req, res, next) {
  Default.postDwarf(req.swagger.params, res, next);
};
