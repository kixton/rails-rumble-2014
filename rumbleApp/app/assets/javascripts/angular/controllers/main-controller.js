app.controller('MainController', ['$scope', 'Category', 'Scale', 'Entity', 
  function($scope, Category, Scale, Entity) {

    $scope.categories = Category.query();
    console.log("!!");
    console.log($scope.categories);

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