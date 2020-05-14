const express = require("express");

const db = require('../data/db-config.js');

module.exports = {
  find,
  findById,
  findSteps,
  add,
  addStep, 
  update,
  remove,
};

function find(){
  return db("schemes");
};

function findById(id){
  return db("schemes").where("id", id);
}

function findSteps(id){
  return db("steps").where("scheme_id", id);
}

function add(scheme){
  return db("schemes").insert(scheme)
  .then(id => findById(id[0]))
}

function addStep(data, id){
  return db("steps").insert(data, {id})
  .then(ids => {
    return findById(id[0])
  });
}

function update(changes, id){
  return db("schemes")
  .where({ id })
  .update(changes)
  .then(() =>{ 
    return findById(id);
  });
}

function remove(id){
  return db("schemes").where({ id }).del();
}