# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  categories = Category.create([{name: 'Tech'}, {name: 'Cities'}])
  entities = Entity.create([{name: 'Uber', category_id: categories[0].id}, {name: 'Lyft', category_id: categories[0].id}, 
    {name: 'San Francisco', category_id: categories[1].id}, {name: 'New York', category_id: categories[1].id}])
  scales = Scale.create([{name: 'Success', positive: 'Game Changer', negative: 'Cautionary Tale', category_id: categories[0].id}, 
    {name: 'Usefulness', positive: 'Useful', negative: 'Useless', category_id: categories[0].id},
    {name: 'Cost of Living', positive: 'Cheap', negative: 'Expen$ive', category_id: categories[1].id},
    {name: 'Attractive People', positive: 'Beautiful', negative: 'Ugly', category_id: categories[1].id},
    ])
  join = EntitiesScale.create([{entity_id: entities[0].id, scale_id: scales[0].id, score: 5, total: 10},
    {entity_id: entities[0].id, scale_id: scales[1].id, score: 6, total: 10},
    {entity_id: entities[1].id, scale_id: scales[0].id, score: 4, total: 10},
    {entity_id: entities[1].id, scale_id: scales[1].id, score: 3, total: 10},
    {entity_id: entities[2].id, scale_id: scales[2].id, score: 7, total: 10},
    {entity_id: entities[2].id, scale_id: scales[3].id, score: 8, total: 10},
    {entity_id: entities[3].id, scale_id: scales[2].id, score: 9, total: 10},
    {entity_id: entities[3].id, scale_id: scales[3].id, score: 10, total: 10},
    ])