# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  categories = Category.create([{name: 'Tech'}, {name: 'Cities'}])
  entities = Entity.create([
    {name: 'Uber', category_id: categories[0].id}, 
    {name: 'Lyft', category_id: categories[0].id}, 
    {name: "DropBox", category_id: categories[0].id}, 
    {name: "Airbnb", category_id: categories[0].id}, 
    {name: "Facebook", category_id: categories[0].id}, 
    {name: "Secret", category_id: categories[0].id}, 
    {name: "Yo", category_id: categories[0].id}, 
    {name: "Twitter", category_id: categories[0].id}, 
    {name: "Yahoo!", category_id: categories[0].id}, 
    {name: "Google", category_id: categories[0].id}, 
    {name: "Snapchat", category_id: categories[0].id}, 
    {name: "Microsoft", category_id: categories[0].id}, 
    {name: "Apple", category_id: categories[0].id}, 

    {name: 'San Francisco', category_id: categories[1].id}, 
    {name: 'New York', category_id: categories[1].id}, 
    {name: 'Seattle', category_id: categories[1].id}, 
    {name: 'Austin', category_id: categories[1].id}, 
    {name: 'Paris', category_id: categories[1].id}, 
    {name: 'Los Angeles', category_id: categories[1].id}, 
    {name: 'Las Vegas', category_id: categories[1].id}, 
    {name: 'Washington DC', category_id: categories[1].id}, 
    {name: 'Tokyo', category_id: categories[1].id}, 
    {name: 'Chicago', category_id: categories[1].id}, 
    {name: 'London', category_id: categories[1].id}, 
    {name: 'Denver', category_id: categories[1].id}, 
    {name: 'Miami', category_id: categories[1].id}
    ])

  scales = Scale.create([
    {name: 'Expected Success', positive: 'Rocketship', negative: 'Crash And Burn', category_id: categories[0].id}, 
    {name: 'Utility', positive: 'Need It!', negative: 'Time Waster', category_id: categories[0].id},
    {name: 'Design', positive: 'Sleek', negative: 'Ugly', category_id: categories[0].id},
    {name: 'Innovative', positive: 'Game Changer', negative: 'Copycat', category_id: categories[0].id},
    {name: 'Social Impact', positive: 'Improves Society', negative: 'Mostly Evil', category_id: categories[0].id},
    {name: 'Who Uses It?', positive: 'Grandmas', negative: '#Teens', category_id: categories[0].id},

    {name: 'Cost of Living', positive: 'Cheap', negative: 'Expen$ive', category_id: categories[1].id},
    {name: 'Sports', positive: 'Titletown', negative: 'Born Losers', category_id: categories[1].id},
    {name: 'Nightlife', positive: 'Never Sleeps', negative: 'Ghostown', category_id: categories[1].id},
    {name: 'Culture', positive: 'Vibrant', negative: 'Wasteland', category_id: categories[1].id},
    {name: 'Traffic', positive: 'Open Roads', negative: 'Gridlock', category_id: categories[1].id},
    {name: 'Vibe', positive: 'Down To Earth', negative: 'Douchey', category_id: categories[1].id},
    {name: 'Sexiness', positive: 'Sexy', negative: 'Plain', category_id: categories[1].id}
    ])

  joins = EntitiesScale.create([{entity_id: entities[0].id, scale_id: scales[0].id, score: 9, total: 10},
{entity_id: entities[0].id, scale_id: scales[0].id, score: 6, total: 10},
{entity_id: entities[0].id, scale_id: scales[1].id, score: 9, total: 10},
{entity_id: entities[0].id, scale_id: scales[2].id, score: 7.5, total: 10},
{entity_id: entities[0].id, scale_id: scales[3].id, score: 8, total: 10},
{entity_id: entities[0].id, scale_id: scales[4].id, score: 6, total: 10},
{entity_id: entities[0].id, scale_id: scales[5].id, score: 5, total: 10},

{entity_id: entities[1].id, scale_id: scales[0].id, score: 5, total: 10},
{entity_id: entities[1].id, scale_id: scales[1].id, score: 8.5, total: 10},
{entity_id: entities[1].id, scale_id: scales[2].id, score: 8, total: 10},
{entity_id: entities[1].id, scale_id: scales[3].id, score: 7.5, total: 10},
{entity_id: entities[1].id, scale_id: scales[4].id, score: 5.5, total: 10},
{entity_id: entities[1].id, scale_id: scales[5].id, score: 4, total: 10},

{entity_id: entities[2].id, scale_id: scales[0].id, score: 8, total: 10},
{entity_id: entities[2].id, scale_id: scales[1].id, score: 10, total: 10},
{entity_id: entities[2].id, scale_id: scales[2].id, score: 3, total: 10},
{entity_id: entities[2].id, scale_id: scales[3].id, score: 9, total: 10},
{entity_id: entities[2].id, scale_id: scales[4].id, score: 1, total: 10},
{entity_id: entities[2].id, scale_id: scales[5].id, score: 7, total: 10},

{entity_id: entities[3].id, scale_id: scales[0].id, score: 6, total: 10},
{entity_id: entities[3].id, scale_id: scales[1].id, score: 7, total: 10},
{entity_id: entities[3].id, scale_id: scales[2].id, score: 9, total: 10},
{entity_id: entities[3].id, scale_id: scales[3].id, score: 7, total: 10},
{entity_id: entities[3].id, scale_id: scales[4].id, score: 5, total: 10},
{entity_id: entities[3].id, scale_id: scales[5].id, score: 3, total: 10},

{entity_id: entities[4].id, scale_id: scales[0].id, score: 7, total: 10},
{entity_id: entities[4].id, scale_id: scales[1].id, score: 3, total: 10},
{entity_id: entities[4].id, scale_id: scales[2].id, score: -2, total: 10},
{entity_id: entities[4].id, scale_id: scales[3].id, score: 4, total: 10},
{entity_id: entities[4].id, scale_id: scales[4].id, score: 7, total: 10},
{entity_id: entities[4].id, scale_id: scales[5].id, score: 8, total: 10},

{entity_id: entities[5].id, scale_id: scales[0].id, score: -10, total: 10},
{entity_id: entities[5].id, scale_id: scales[1].id, score: -8, total: 10},
{entity_id: entities[5].id, scale_id: scales[2].id, score: 4.5, total: 10},
{entity_id: entities[5].id, scale_id: scales[3].id, score: -5, total: 10},
{entity_id: entities[5].id, scale_id: scales[4].id, score: -9, total: 10},
{entity_id: entities[5].id, scale_id: scales[5].id, score: -5, total: 10},

{entity_id: entities[6].id, scale_id: scales[0].id, score: -9, total: 10},
{entity_id: entities[6].id, scale_id: scales[1].id, score: -7, total: 10},
{entity_id: entities[6].id, scale_id: scales[2].id, score: 0, total: 10},
{entity_id: entities[6].id, scale_id: scales[3].id, score: -6, total: 10},
{entity_id: entities[6].id, scale_id: scales[4].id, score: -10, total: 10},
{entity_id: entities[6].id, scale_id: scales[5].id, score: -7, total: 10},

{entity_id: entities[7].id, scale_id: scales[0].id, score: 3, total: 10},
{entity_id: entities[7].id, scale_id: scales[1].id, score: -1, total: 10},
{entity_id: entities[7].id, scale_id: scales[2].id, score: -4, total: 10},
{entity_id: entities[7].id, scale_id: scales[3].id, score: 3, total: 10},
{entity_id: entities[7].id, scale_id: scales[4].id, score: -1, total: 10},
{entity_id: entities[7].id, scale_id: scales[5].id, score: 6, total: 10},

{entity_id: entities[8].id, scale_id: scales[0].id, score: -6, total: 10},
{entity_id: entities[8].id, scale_id: scales[1].id, score: -8, total: 10},
{entity_id: entities[8].id, scale_id: scales[2].id, score: -7, total: 10},
{entity_id: entities[8].id, scale_id: scales[3].id, score: -7, total: 10},
{entity_id: entities[8].id, scale_id: scales[4].id, score: -3, total: 10},
{entity_id: entities[8].id, scale_id: scales[5].id, score: 10, total: 10},

{entity_id: entities[9].id, scale_id: scales[0].id, score: 10, total: 10},
{entity_id: entities[9].id, scale_id: scales[1].id, score: 5, total: 10},
{entity_id: entities[9].id, scale_id: scales[2].id, score: -5, total: 10},
{entity_id: entities[9].id, scale_id: scales[3].id, score: 10, total: 10},
{entity_id: entities[9].id, scale_id: scales[4].id, score: 10, total: 10},
{entity_id: entities[9].id, scale_id: scales[5].id, score: 2, total: 10},

{entity_id: entities[10].id, scale_id: scales[0].id, score: -7, total: 10},
{entity_id: entities[10].id, scale_id: scales[1].id, score: -6, total: 10},
{entity_id: entities[10].id, scale_id: scales[2].id, score: 3.5, total: 10},
{entity_id: entities[10].id, scale_id: scales[3].id, score: 2, total: 10},
{entity_id: entities[10].id, scale_id: scales[4].id, score: -8, total: 10},
{entity_id: entities[10].id, scale_id: scales[5].id, score: -10, total: 10},

{entity_id: entities[11].id, scale_id: scales[0].id, score: -2, total: 10},
{entity_id: entities[11].id, scale_id: scales[1].id, score: 1, total: 10},
{entity_id: entities[11].id, scale_id: scales[2].id, score: -8, total: 10},
{entity_id: entities[11].id, scale_id: scales[3].id, score: -8, total: 10},
{entity_id: entities[11].id, scale_id: scales[4].id, score: 0, total: 10},
{entity_id: entities[11].id, scale_id: scales[5].id, score: 9, total: 10},

{entity_id: entities[12].id, scale_id: scales[0].id, score: 9, total: 10},
{entity_id: entities[12].id, scale_id: scales[1].id, score: 8, total: 10},
{entity_id: entities[12].id, scale_id: scales[2].id, score: 10, total: 10},
{entity_id: entities[12].id, scale_id: scales[3].id, score: 6, total: 10},
{entity_id: entities[12].id, scale_id: scales[4].id, score: 8, total: 10},
{entity_id: entities[12].id, scale_id: scales[5].id, score: 1, total: 10},

   #  {entity_id: entities[0].id, scale_id: scales[1].id, score: 7, total: 10},
   #  {entity_id: entities[0].id, scale_id: scales[2].id, score: 2, total: 10},
   #  {entity_id: entities[0].id, scale_id: scales[3].id, score: 7, total: 10},
   #  {entity_id: entities[0].id, scale_id: scales[4].id, score: -5, total: 10},
   #  {entity_id: entities[0].id, scale_id: scales[5].id, score: 4, total: 10},

   #  {entity_id: entities[1].id, scale_id: scales[0].id, score: 4, total: 10},
   #  {entity_id: entities[1].id, scale_id: scales[1].id, score: 7, total: 10},
   #  {entity_id: entities[1].id, scale_id: scales[2].id, score: 8, total: 10},
   #  {entity_id: entities[1].id, scale_id: scales[3].id, score: 1, total: 10},
   #  {entity_id: entities[1].id, scale_id: scales[4].id, score: 1, total: 10},
   #  {entity_id: entities[1].id, scale_id: scales[5].id, score: -3, total: 10},

   #  {entity_id: entities[2].id, scale_id: scales[0].id, score: 4, total: 10},
   #  {entity_id: entities[2].id, scale_id: scales[1].id, score: 8, total: 10},
   #  {entity_id: entities[2].id, scale_id: scales[2].id, score: -2, total: 10},
   #  {entity_id: entities[2].id, scale_id: scales[3].id, score: 6, total: 10},
   #  {entity_id: entities[2].id, scale_id: scales[4].id, score: 0, total: 10},
   #  {entity_id: entities[2].id, scale_id: scales[5].id, score: 3, total: 10},

   #  {entity_id: entities[3].id, scale_id: scales[0].id, score: 6, total: 10},
   #  {entity_id: entities[3].id, scale_id: scales[1].id, score: 9, total: 10},
   #  {entity_id: entities[3].id, scale_id: scales[2].id, score: -5, total: 10},
   #  {entity_id: entities[3].id, scale_id: scales[3].id, score: 4, total: 10},
   #  {entity_id: entities[3].id, scale_id: scales[4].id, score: -3, total: 10},
   #  {entity_id: entities[3].id, scale_id: scales[5].id, score: 9, total: 10},

   #  {entity_id: entities[4].id, scale_id: scales[0].id, score: 10, total: 10},
   #  {entity_id: entities[4].id, scale_id: scales[1].id, score: 5, total: 10},
   #  {entity_id: entities[4].id, scale_id: scales[2].id, score: -8, total: 10},
   #  {entity_id: entities[4].id, scale_id: scales[3].id, score: 6, total: 10},
   #  {entity_id: entities[4].id, scale_id: scales[4].id, score: -5, total: 10},
   #  {entity_id: entities[4].id, scale_id: scales[5].id, score: 7, total: 10},

   #  {entity_id: entities[5].id, scale_id: scales[0].id, score: 7, total: 10},
   #  {entity_id: entities[5].id, scale_id: scales[1].id, score: 3, total: 10},
   #  {entity_id: entities[5].id, scale_id: scales[2].id, score: 10, total: 10},
   #  {entity_id: entities[5].id, scale_id: scales[3].id, score: -5, total: 10},
   #  {entity_id: entities[5].id, scale_id: scales[4].id, score: 3, total: 10},
   #  {entity_id: entities[5].id, scale_id: scales[5].id, score: 7, total: 10},

   # {entity_id: entities[6].id, scale_id: scales[0].id, score: -7, total: 10},
   # {entity_id: entities[6].id, scale_id: scales[1].id, score: -8, total: 10},
   # {entity_id: entities[6].id, scale_id: scales[2].id, score: -7, total: 10},
   # {entity_id: entities[6].id, scale_id: scales[3].id, score: -5, total: 10},
   # {entity_id: entities[6].id, scale_id: scales[4].id, score: -9, total: 10},
   # {entity_id: entities[6].id, scale_id: scales[5].id, score: -5, total: 10},

   # {entity_id: entities[7].id, scale_id: scales[0].id, score: 3, total: 10},
   # {entity_id: entities[7].id, scale_id: scales[1].id, score: -5, total: 10},
   # {entity_id: entities[7].id, scale_id: scales[2].id, score: -2, total: 10},
   # {entity_id: entities[7].id, scale_id: scales[3].id, score: 3, total: 10},
   # {entity_id: entities[7].id, scale_id: scales[4].id, score: -5, total: 10},
   # {entity_id: entities[7].id, scale_id: scales[5].id, score: 3, total: 10},

   # {entity_id: entities[8].id, scale_id: scales[0].id, score: -3, total: 10},
   # {entity_id: entities[8].id, scale_id: scales[1].id, score: -9, total: 10},
   # {entity_id: entities[8].id, scale_id: scales[2].id, score: -8, total: 10},
   # {entity_id: entities[8].id, scale_id: scales[3].id, score: -9, total: 10},
   # {entity_id: entities[8].id, scale_id: scales[4].id, score: 1, total: 10},
   # {entity_id: entities[8].id, scale_id: scales[5].id, score: 4, total: 10},

   # {entity_id: entities[9].id, scale_id: scales[0].id, score: 10, total: 10},
   # {entity_id: entities[9].id, scale_id: scales[1].id, score: 9, total: 10},
   # {entity_id: entities[9].id, scale_id: scales[2].id, score: -5, total: 10},
   # {entity_id: entities[9].id, scale_id: scales[3].id, score: 9, total: 10},
   # {entity_id: entities[9].id, scale_id: scales[4].id, score: 9, total: 10},
   # {entity_id: entities[9].id, scale_id: scales[5].id, score: 3, total: 10},

   # {entity_id: entities[10].id, scale_id: scales[0].id, score: 3, total: 10},
   # {entity_id: entities[10].id, scale_id: scales[1].id, score: -8, total: 10},
   # {entity_id: entities[10].id, scale_id: scales[2].id, score: -4, total: 10},
   # {entity_id: entities[10].id, scale_id: scales[3].id, score: 5, total: 10},
   # {entity_id: entities[10].id, scale_id: scales[4].id, score: -4, total: 10},
   # {entity_id: entities[10].id, scale_id: scales[5].id, score: 3, total: 10},

   # {entity_id: entities[11].id, scale_id: scales[0].id, score: 8, total: 10},
   # {entity_id: entities[11].id, scale_id: scales[1].id, score: -4, total: 10},
   # {entity_id: entities[11].id, scale_id: scales[2].id, score: -8, total: 10},
   # {entity_id: entities[11].id, scale_id: scales[3].id, score: -3, total: 10},
   #  {entity_id: entities[11].id, scale_id: scales[4].id, score: 6, total: 10},
   # {entity_id: entities[11].id, scale_id: scales[5].id, score: -6, total: 10},

   # {entity_id: entities[12].id, scale_id: scales[0].id, score: 7, total: 10},
   # {entity_id: entities[12].id, scale_id: scales[1].id, score: 7, total: 10},
   # {entity_id: entities[12].id, scale_id: scales[2].id, score: 9, total: 10},
   # {entity_id: entities[12].id, scale_id: scales[3].id, score: 8, total: 10},
   # {entity_id: entities[12].id, scale_id: scales[4].id, score: -6, total: 10},
   # {entity_id: entities[12].id, scale_id: scales[5].id, score: -6, total: 10},
#START OF CITIES
   {entity_id: entities[13].id, scale_id: scales[6].id, score: -9, total: 10},
   {entity_id: entities[13].id, scale_id: scales[7].id, score: 6, total: 10},
   {entity_id: entities[13].id, scale_id: scales[8].id, score: -2, total: 10},
   {entity_id: entities[13].id, scale_id: scales[9].id, score: 6, total: 10},   
   {entity_id: entities[13].id, scale_id: scales[10].id, score: -6, total: 10},
   {entity_id: entities[13].id, scale_id: scales[11].id, score: 9, total: 10},
   {entity_id: entities[13].id, scale_id: scales[12].id, score: 2, total: 10},

   {entity_id: entities[14].id, scale_id: scales[6].id, score: -7, total: 10},
   {entity_id: entities[14].id, scale_id: scales[7].id, score: 3, total: 10},
   {entity_id: entities[14].id, scale_id: scales[8].id, score: 4, total: 10},
   {entity_id: entities[14].id, scale_id: scales[9].id, score: 9, total: 10},
   {entity_id: entities[14].id, scale_id: scales[10].id, score: -9, total: 10},
   {entity_id: entities[14].id, scale_id: scales[11].id, score: 8, total: 10},
   {entity_id: entities[14].id, scale_id: scales[12].id, score: 7, total: 10},

   {entity_id: entities[15].id, scale_id: scales[6].id, score: 3, total: 10},
   {entity_id: entities[15].id, scale_id: scales[7].id, score: 9, total: 10},
   {entity_id: entities[15].id, scale_id: scales[8].id, score: 7, total: 10},
   {entity_id: entities[15].id, scale_id: scales[9].id, score: 3, total: 10},
   {entity_id: entities[15].id, scale_id: scales[10].id, score: -3, total: 10},
   {entity_id: entities[15].id, scale_id: scales[11].id, score: 7, total: 10},
   {entity_id: entities[15].id, scale_id: scales[12].id, score: 3, total: 10},

   {entity_id: entities[16].id, scale_id: scales[6].id, score: 2, total: 10},
   {entity_id: entities[16].id, scale_id: scales[7].id, score: 6, total: 10},
   {entity_id: entities[16].id, scale_id: scales[8].id, score: 9, total: 10},      
   {entity_id: entities[16].id, scale_id: scales[9].id, score: -5, total: 10},
   {entity_id: entities[16].id, scale_id: scales[10].id, score: -5, total: 10},
   {entity_id: entities[16].id, scale_id: scales[11].id, score: 8, total: 10},
   {entity_id: entities[16].id, scale_id: scales[12].id, score: 9, total: 10},
#Paris
   {entity_id: entities[17].id, scale_id: scales[6].id, score: -7, total: 10},
   {entity_id: entities[17].id, scale_id: scales[7].id, score: 8, total: 10},
   {entity_id: entities[17].id, scale_id: scales[8].id, score: 6, total: 10},      
   {entity_id: entities[17].id, scale_id: scales[9].id, score: 8, total: 10},
   {entity_id: entities[17].id, scale_id: scales[10].id, score: -9, total: 10},
   {entity_id: entities[17].id, scale_id: scales[11].id, score: -8, total: 10},
   {entity_id: entities[17].id, scale_id: scales[12].id, score: 6, total: 10},

   {entity_id: entities[18].id, scale_id: scales[6].id, score: -5, total: 10},
   {entity_id: entities[18].id, scale_id: scales[7].id, score: -5, total: 10},
   {entity_id: entities[18].id, scale_id: scales[8].id, score: 2, total: 10},      
   {entity_id: entities[18].id, scale_id: scales[9].id, score: 5, total: 10},
   {entity_id: entities[18].id, scale_id: scales[10].id, score: -10, total: 10},
   {entity_id: entities[18].id, scale_id: scales[11].id, score: 4, total: 10},
   {entity_id: entities[18].id, scale_id: scales[12].id, score: 10, total: 10},

   {entity_id: entities[19].id, scale_id: scales[6].id, score: 7, total: 10},
   {entity_id: entities[19].id, scale_id: scales[7].id, score: -10, total: 10},
   {entity_id: entities[19].id, scale_id: scales[8].id, score: 8, total: 10},      
   {entity_id: entities[19].id, scale_id: scales[9].id, score: -9, total: 10},
   {entity_id: entities[19].id, scale_id: scales[10].id, score: 7, total: 10},
   {entity_id: entities[19].id, scale_id: scales[11].id, score: -8, total: 10},
   {entity_id: entities[19].id, scale_id: scales[12].id, score: -2, total: 10},

   {entity_id: entities[20].id, scale_id: scales[6].id, score: -5, total: 10},
   {entity_id: entities[20].id, scale_id: scales[7].id, score: -5, total: 10},
   {entity_id: entities[20].id, scale_id: scales[8].id, score: -10, total: 10},      
   {entity_id: entities[20].id, scale_id: scales[9].id, score: -7, total: 10},
   {entity_id: entities[20].id, scale_id: scales[10].id, score: -7, total: 10},
   {entity_id: entities[20].id, scale_id: scales[11].id, score: 7, total: 10},
   {entity_id: entities[20].id, scale_id: scales[12].id, score: -8, total: 10},

   {entity_id: entities[21].id, scale_id: scales[6].id, score: -9, total: 10},
   {entity_id: entities[21].id, scale_id: scales[7].id, score: -3, total: 10},
   {entity_id: entities[21].id, scale_id: scales[8].id, score: 3, total: 10},      
   {entity_id: entities[21].id, scale_id: scales[9].id, score: 6, total: 10},
   {entity_id: entities[21].id, scale_id: scales[10].id, score: -5, total: 10},
   {entity_id: entities[21].id, scale_id: scales[11].id, score: 5, total: 10},
   {entity_id: entities[21].id, scale_id: scales[12].id, score: 2, total: 10},

   {entity_id: entities[22].id, scale_id: scales[6].id, score: 4, total: 10},
   {entity_id: entities[22].id, scale_id: scales[7].id, score: -6, total: 10},
   {entity_id: entities[22].id, scale_id: scales[8].id, score: -6, total: 10},      
   {entity_id: entities[22].id, scale_id: scales[9].id, score: -3, total: 10},
   {entity_id: entities[22].id, scale_id: scales[10].id, score: -5, total: 10},
   {entity_id: entities[22].id, scale_id: scales[11].id, score: -2, total: 10},
   {entity_id: entities[22].id, scale_id: scales[12].id, score: -2, total: 10},

   {entity_id: entities[23].id, scale_id: scales[6].id, score: -9, total: 10},
   {entity_id: entities[23].id, scale_id: scales[7].id, score: 9, total: 10},
   {entity_id: entities[23].id, scale_id: scales[8].id, score: 4, total: 10},      
   {entity_id: entities[23].id, scale_id: scales[9].id, score: 7, total: 10},
   {entity_id: entities[23].id, scale_id: scales[10].id, score: -2, total: 10},
   {entity_id: entities[23].id, scale_id: scales[11].id, score: -4, total: 10},
   {entity_id: entities[23].id, scale_id: scales[12].id, score: -6, total: 10},

   {entity_id: entities[24].id, scale_id: scales[6].id, score: 7, total: 10},
   {entity_id: entities[24].id, scale_id: scales[7].id, score: -7, total: 10},
   {entity_id: entities[24].id, scale_id: scales[8].id, score: 6, total: 10},      
   {entity_id: entities[24].id, scale_id: scales[9].id, score: 6, total: 10},
   {entity_id: entities[24].id, scale_id: scales[10].id, score: -5, total: 10},
   {entity_id: entities[24].id, scale_id: scales[11].id, score: 4, total: 10},
   {entity_id: entities[24].id, scale_id: scales[12].id, score: 8, total: 10},

   {entity_id: entities[25].id, scale_id: scales[6].id, score: 3, total: 10},
   {entity_id: entities[25].id, scale_id: scales[7].id, score: 3, total: 10},
   {entity_id: entities[25].id, scale_id: scales[8].id, score: -5, total: 10},      
   {entity_id: entities[25].id, scale_id: scales[9].id, score: -7, total: 10},
   {entity_id: entities[25].id, scale_id: scales[10].id, score: -9, total: 10},
   {entity_id: entities[25].id, scale_id: scales[11].id, score: 4, total: 10},
   {entity_id: entities[25].id, scale_id: scales[12].id, score: 8, total: 10}   


       ])