app.factory('Entity', function($resource) {
  return $resource(
  'categories/:category_id/entities/:entity_id',
  {update: {method: 'PATCH'}}
  );
});