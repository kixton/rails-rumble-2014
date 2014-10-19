app.controller('MainController', ['$scope', 'Category', 'Scale', 'Entity', 'EntityScore',
  function($scope, Category, Scale, Entity, EntityScore) {
    $scope.nothing = '';
    $scope.categories = Category.query();
    $scope.scales = Scale.query(function(data){
      $scope.x = data[0];
      $scope.y = data[1];
    });
    $scope.entities = Entity.query();
    
    $scope.load = function(){
      $scope.entityScore = EntityScore.query({category_id: 1, x_scale_id: Math.floor(Math.random()*6)+1, y_scale_id: Math.floor(Math.random()*6)+1}, function(data){
        $scope.graphScores();
      });
    };

    $scope.getScales = function(category){
      Scale.query({category_id: category.id}, function(data){
        $scope.scales = data;
        $scope.x = data[0];
        $scope.y = data[1];
        Entity.query({category_id: category.id}, function(data){
          $scope.entities = data;
          $scope.entityScore = EntityScore.query({category_id: $scope.x.category_id, x_scale_id: Math.floor(Math.random()*6)+1, y_scale_id: Math.floor(Math.random()*6)+1}, function(data){
            $scope.graphScores();
          });
        });
      });
    };

    $scope.getScores = function(category, scale1, scale2){
      EntityScore.query({category_id: category.id, x_scale_id: scale1.id, y_scale_id: scale2.id}, function(data){
        $scope.entityScore = data;
      });
    };

    $scope.randomize = function(){
      $scope.entityScore = EntityScore.query({category_id: $scope.x.category_id, x_scale_id: Math.floor(Math.random()*6)+1, y_scale_id: Math.floor(Math.random()*6)+1}, function(){
        $scope.load();
      });
    };

    $scope.graphScores = function(){
      $("#graph").empty();
      var paper = new Raphael(document.getElementById('graph'));
      var yAxis = paper.path("M 250 0 l 0 500");
      var xAxis = paper.path("M 0 250 l 500 0");
      $scope.circle_array = [];
      $scope.label_array = [];
      console.log($scope.circle_array)
      colors = ["#FFFF33", "#FF6600", "#FF3366", "#CCFFCC"]
      for (var i = 0; i < $scope.entityScore.length; i++) {
          var c = paper.circle(250+(($scope.entityScore[i].x.score)*25), (250-($scope.entityScore[i].y.score)*25), 20);
          $scope.circle_array.push(c);
          c.attr({fill: '#'+Math.floor(Math.random()*16777215).toString(16), "fill-opacity": 0.5, "stroke-opacity":0.1});
          var l = paper.text(240+(($scope.entityScore[i].x.score)*25), (275-($scope.entityScore[i].y.score)*25), $scope.entityScore[i].name)
          $scope.label_array.push(l);
        }
      console.log($scope.label_array);
    };

    $scope.reDrawScores = function(x_scale, y_scale, cat){
        // var paper = new Raphael(document.getElementById('graph'));
      $scope.entityScore = EntityScore.query({category_id: x_scale.category_id, x_scale_id: x_scale.id, y_scale_id: y_scale.id}, function(data){
          console.log(data);
        for (var i = 0; i < $scope.circle_array.length; i++) {
         $scope.circle_array[i].animate({cx: 250+(data[i].x.score)*25, cy: 250-(data[i].y.score)*25}, 2000, "elastic");
         $scope.label_array[i].animate({x: 240+(data[i].x.score)*25, y: 275-(data[i].y.score)*25}, 2000, "bounce");
        }
      });
    };
    // set x-axis labels
    $scope.xScale = function(scale) {
      Scale.get({category_id: scale.category_id, scale_id: scale.id}, function(scale) {
        $scope.x = scale;
        $scope.reDrawScores($scope.x, $scope.y, $scope.x.category_id);
        // Entity.query({});
      });
    };

    // set y-axis labels
    $scope.yScale = function(scale) {
      Scale.get({category_id: scale.category_id, scale_id: scale.id},function(scale) {
        $scope.y = scale;
        $scope.reDrawScores($scope.x, $scope.y, $scope.x.category_id);
      });    
    };

  }
]);