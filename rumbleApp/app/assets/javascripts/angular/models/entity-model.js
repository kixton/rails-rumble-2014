app.factory('Entity', function($resource) {
  return $resource(
  'categories/:category_id/entities/:entity_id/',
  {category_id: 1},
  {update: {method: 'PATCH'}}
  );
});


app.factory('EntityScore', function($resource){
  return $resource(
    'categories/:category_id/get_scores/:x_scale_id/:y_scale_id',
    // {category_id: 1, x_scale_id: Math.floor(Math.random()*6)+1, y_scale_id: Math.floor(Math.random()*6)+1},
    {update: {method: 'PATCH'}}
    );
});

