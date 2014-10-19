app.controller('MainController', ['$scope', 'Category', 'Scale', 'Entity', 'EntityScore',
  function($scope, Category, Scale, Entity, EntityScore) {
    $scope.nothing = '';
    $scope.categories = Category.query();
    $scope.scales = Scale.query(function(data){
      $scope.x = data[0];
      $scope.y = data[1];
    });
    $scope.entities = Entity.query();
    // $scope.entityScore = EntityScore.query();
    $scope.entityScore = EntityScore.query({category_id: 1, x_scale_id: Math.floor(Math.random()*6)+1, y_scale_id: Math.floor(Math.random()*6)+1});

    $scope.getScales = function(category){
      Scale.query({category_id: category.id}, function(data){
        $scope.scales = data;
        $scope.x = data[0];
        $scope.y = data[1];
      });
      Entity.query({category_id: category.id}, function(data){
        $scope.entities = data;
      });
    };

    $scope.getScores = function(category, scale1, scale2){
      EntityScore.query({category_id: category.id, x_scale_id: scale1.id, y_scale_id: scale2.id}, function(data){
        $scope.entityScore = data;
      });
    };

    $scope.randomize = function(){
      $scope.entityScore = EntityScore.query({category_id: 1, x_scale_id: Math.floor(Math.random()*6)+1, y_scale_id: Math.floor(Math.random()*6)+1});
    }

    $scope.graphScores = function(){
      $("#graph").empty();
      var paper = new Raphael(document.getElementById('graph'));
      var yAxis = paper.path("M 250 0 l 0 500");
      var xAxis = paper.path("M 0 250 l 500 0");
      var circle_array = [];
            // var maxscale = $scope.entityScoreRand;
      $scope.entityScore = EntityScore.query({category_id: 1, x_scale_id: Math.floor(Math.random()*6)+1, y_scale_id: Math.floor(Math.random()*6)+1});
      console.log("yo");
      // console.log($scope.entityScore);
        // for (var i = 0; i < 10; i++) {
        // console.log(i);
        // var c = paper.circle(250+(($scope.entityScore[i].x.score)*25), (250-($scope.entityScore[i].y.score)*25), 20);
        // }
    };



    // set x-axis labels
    $scope.xScale = function(scale) {
      Scale.query({category_id: scale.category_id, scale_id: scale.id}, function(scale) {
        $scope.x = scale;
        // Entity.query({});
      });
    };

    // set y-axis labels
    $scope.yScale = function(scale) {
      Scale.query({category_id: scale.category_id, scale_id: scale.id},function(scale) {
        $scope.y = scale;
      });    
    };

  }
]);