app.controller('MainController', ['$scope', 'Category', 'Scale', 'Entity', 
  function($scope, Category, Scale, Entity) {
    $scope.nothing = '';
    $scope.categories = Category.query();
    $scope.scales = Scale.query();
    $scope.entities = Entity.query();

    $scope.getScales = function(category){
      Scale.query({category_id: category.id}, function(data){
        $scope.scales = data;
      });
      Entity.query({category_id: category.id}, function(data){
        $scope.entities = data;
      });
    };

    // set x-axis labels
    // $scope.xScale = function(scale) {
    //   Scale.query({category_id: scale.category_id, scale_id: scale.id}, function(scale) {
    //     $scope.xpositive = scale.positive;
    //     $scope.xnegative = scale.negative;
    //     // Entity.query({});
    //   });

    // };

    // set y-axis labels
    // $scope.yScale = function(scale) {
    //   Scale.query({category_id: scale.category_id, scale_id: scale.id},function(scale) {
    //     $scope.ypositive = scale.positive;
    //     $scope.ynegative = scale.negative;
    //   });    
    // };

  }
]);