app.factory('Category', function($resource) {
  return $resource('/categories/:category_id');
});