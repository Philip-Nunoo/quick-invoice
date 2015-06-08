# helpers.coffee
Template.registerHelper 'print', (item) ->
	console.log item
	item

Template.registerHelper 'formatDate', (date)->
	return moment(date).format 'MMMM Do YYYY'