@photogur.controller('PicturesController', ($scope, $location, Picture) ->
  $scope.pictures = Picture.query()

  $scope.createPicture = ->
    newPicture = new Picture($scope.picture)
    newPicture.save(->
      $location.path('/pictures')
    )
    
)