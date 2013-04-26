@photogur.controller('PicturesController', ($scope, $location, Pictures) ->
  $scope.pictures = Pictures

  $scope.createPicture = ->
    Pictures.push($scope.picture)
    $location.path('/pictures');
)