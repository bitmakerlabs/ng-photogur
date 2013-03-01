@photogur.controller('PicturesController', ($scope, Pictures) ->
  $scope.pictures = Pictures

  $scope.createPicture = ->
    Pictures.push($scope.picture)
    console.log("The picture is", $scope.picture)
    console.log("The total count", $scope.pictures.length)
)