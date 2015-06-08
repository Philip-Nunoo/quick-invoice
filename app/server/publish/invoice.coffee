# invoice.coffee
Meteor.publish 'invoices', ->
	Invoices.find()

Meteor.publish 'singleInvoice', (_id) ->
	Invoices.find _id: _id