# For more information see: http://emberjs.com/guides/routing/

Lwc.OccupationsRoute = Ember.Route.extend(model: ->
  @store.find "state"
)