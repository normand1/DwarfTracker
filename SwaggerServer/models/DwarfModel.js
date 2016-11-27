var mongoose = require('mongoose');

var Schema = mongoose.Schema;

var dwarfschema = new Schema({
    name: String,
    age: String,
    professionId: String,
    id: String
});

var Dwarf = mongoose.model('dwarf', dwarfschema);

module.exports = Dwarf;
