const db = require("../data/db.config");

module.exports = {
    find,
    findByID, 
    findSteps, 
    add,
    update,
    remove
}

function find() {
    return db("schemes")
}

function findByID(id) {
    return db("schemes")
    .where({id})
    .find()
}

function findSteps(id) {
    return db("schemes")
    .where({id})
}

function add() {
    return db("scheme")
    .insert()
}

function update(id, changes) {
    return db("scheme")
    .where({id})
    .update(changes)
    .then(()=>{
        return findByID(id)
    })
}
 
function remove(id){
    return db("scheme")
    .where({id})
    .del()
}