@photogur.controller('PictureController', ($scope, $location, Pictures, $routeParams) ->
  $scope.picture = Pictures[$routeParams.id]

  $scope.updatePicture = ->
  	$location.path('/pictures')
)