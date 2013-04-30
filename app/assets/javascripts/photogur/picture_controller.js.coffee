@photogur.controller('PictureController', ($scope, $location, Picture, $routeParams) ->
  $scope.picture = Picture.get({id: $routeParams.id})

  $scope.updatePicture = ->
    Picture.update($scope.picture, 
      (data) ->
        $location.path('/pictures') 
      , (data) ->
        alert("Could not update picture.")
    )
  	
)