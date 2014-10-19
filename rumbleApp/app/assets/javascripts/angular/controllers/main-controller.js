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
      // var yAxis = paper.path("M 250 0 l 0 500");
      // var xAxis = paper.path("M 0 250 l 500 0");
      var circle_array = [];
            // var maxscale = $scope.entityScoreRand;
      $scope.entityScore = EntityScore.query({category_id: 1, x_scale_id: Math.floor(Math.random()*6)+1, y_scale_id: Math.floor(Math.random()*6)+1}, function() {
        var xValues = [-20];
        var yValues = [-20];
        var totals = [200];
        var labels = [];
        colors = ["#FFFF33", "#FF6600", "#FF3366", "#CCFFCC"]
        for (var i = 0; i < $scope.entityScore.length; i++) {
          xValues.push($scope.entityScore[i].x.score);
          yValues.push($scope.entityScore[i].y.score);
          totals.push($scope.entityScore[i].x.total);
            // var c = paper.circle(250+(($scope.entityScore[i].x.score)*25), (250-($scope.entityScore[i].y.score)*25), 20);
            // c.attr({fill: '#'+Math.floor(Math.random()*16777215).toString(16), "fill-opacity": 0.5, "stroke-opacity":0.1});
            // var l = paper.text(240+(($scope.entityScore[i].x.score)*25), (275-($scope.entityScore[i].y.score)*25), $scope.entityScore[i].name)
            // console.log($scope.entityScore[i].x.score)
            // console.log($scope.entityScore[0].x.scale_id)
          }
          console.log(xValues);
          console.log(yValues);
          console.log(totals);
          paper.dotchart(0, 0, 500, 500, xValues, yValues, totals, {heat: true, max: 10, opacity: 0.5, axis:"0 0 1 1", axisxstep: 1, axisystep: 1, axisxtype: " ", axisytype: " "}).each(function(){
            this.marker
          });
      });      
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