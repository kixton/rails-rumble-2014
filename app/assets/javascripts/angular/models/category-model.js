app.factory('Category', function($resource) {
  return $resource(
    '/categories/:category_id',
    {category_id: '@category_id'}
    // {update: {method: 'PATCH'}},
    );
});