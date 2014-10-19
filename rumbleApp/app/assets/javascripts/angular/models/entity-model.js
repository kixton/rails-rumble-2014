app.factory('Entity', function($resource) {
  return $resource(
  'categories/:category_id/entities/:entity_id',
  {category_id: 1},
  {update: {method: 'PATCH'}}
  );
});