@photogur.controller('PictureController', ($scope, $location, Picture, $routeParams) ->
  $scope.picture = Picture.get({id: $routeParams.id})

  $scope.updatePicture = ->
  	$location.path('/pictures')
)