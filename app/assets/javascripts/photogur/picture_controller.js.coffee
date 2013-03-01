@photogur.controller('PictureController', ($scope, Pictures, $routeParams) ->
  $scope.picture = Pictures[$routeParams.id]
)