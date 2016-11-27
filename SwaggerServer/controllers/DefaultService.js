'use strict';

var mongoose = require("mongoose");
var Dwarf = require('../models/DwarfModel');

exports.getDwarves = function(args, res, next) {
  /**
   * parameters expected in the args:
  **/

  res.setHeader('Content-Type', 'application/json');
      Dwarf.find({}, function (err, docs) {
        if (err) throw err;
        res.end(JSON.stringify(docs));
    });
}

exports.postDwarf = function(args, res, next) {
  /**
   * parameters expected in the args:
  * payload (Dwarf)
  **/
  // no response value expected for this operation

  res.setHeader('Content-Type', 'application/json');
  Dwarf.create(args.payload.value, function(err, results) {
      if (err) throw err;
        res.end(JSON.stringify(results));
    })
}

