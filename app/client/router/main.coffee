# main.coffee
Router.map ->
	@route 'home',
		path: '/'
		template: 'home_page'
		controller: 'MainController'

	@route 'invoices',
		path: '/invoices'
		template: 'dashboard_invoices'
		controller: 'DashboardController'
		waitOn: ->
			Meteor.subscribe 'invoices'
		data: ->
			invoices: Invoices.find().fetch()

	@route 'invoices.new',
		path: '/invoice/new'
		template: 'dashboard_new_invoice'
		controller: 'DashboardController'
		yieldTemplates: 
			'invoiceTotalInfo': 
				to: 'pageContent'
		waitOn: ->
			# Meteor.subscribe 'invoices'

	# Not completed
	@route 'invoice.view',
		path: '/invoice/view/:_id'
		template: 'dashboard_view_invoice'
		controller: 'DashboardController'
		waitOn: ->
			Meteor.subscribe 'singleInvoice', @params._id
		data: ->
			doc: Invoices.findOne @params._id

	@route 'invoice.edit',
		path: '/invoice/edie/:_id'
		template: 'dashboard_edit_invoice'
		controller: 'DashboardController'
		waitOn: ->
			Meteor.subscribe 'singleInvoice', @params._id
		data: ->
			doc: Invoices.findOne @params._id