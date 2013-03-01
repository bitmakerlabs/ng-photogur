@photogur = angular.module('photogur', [])


@photogur.config(($routeProvider, $locationProvider) ->

  # Enable HTML5 history support. For browsers that support HTML5 history this means
  # You can use a url like this
  #    http://localhost:3000/pictures/new
  # Instead of this
  #    http://localhost:3000/#/pictures/new
  # 
  # Here's a detailed explanation of how HTML5 history works: 
  # http://diveintohtml5.info/history.html
  $locationProvider.html5Mode(true)

  # Set up the application routes. This is similar to Rails' /config/routes.rb
  $routeProvider
  .when("/",              {templateUrl: "pictures/index", controller: "PicturesController"})
  .when('/pictures',      {templateUrl: "pictures/index", controller: "PicturesController"})
  .when('/pictures/show', {templateUrl: "pictures/show"})
  .when('/pictures/new',  {templateUrl: "pictures/new"})
  .when('/pictures/edit', {templateUrl: "pictures/edit"})
  .otherwise({template: "Page not found."})
)


@photogur.run(['$window', '$templateCache', ($window, $templateCache) ->
  # Load the hamlc templates into the angular template cache when angular starts up.
  # This means angular doesn't need to download each template from the server 
  # when a page is requested.
  $templateCache.put(name, templateFunction) for name, templateFunction of $window.JST
])

# Store the picture data in a factory so that the data can be injected into
# many controllers
@photogur.factory('Pictures', ->
  return [
    {
      title : "The old church on the coast of White sea",
      artist: "Sergey Ershov",
      url   : "http://monicao.s3.amazonaws.com/bitmaker/house.jpg"
    },
    {
      title : "Sea Power",
      artist: "Stephen Scullion",
      url   : "http://monicao.s3.amazonaws.com/bitmaker/wave.jpg"
    },
    {
      title : "Into the Poppies",
      artist: "John Wilhelm",
      url   : "http://monicao.s3.amazonaws.com/bitmaker/girl.jpg"
    }
  ]
)

