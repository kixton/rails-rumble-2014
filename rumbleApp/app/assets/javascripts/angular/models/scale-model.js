app.factory('Scale', function($resource) {
  return $resource(
    'categories/:category_id/scales/:scale_id',
    {category_id: 1}
  );
});