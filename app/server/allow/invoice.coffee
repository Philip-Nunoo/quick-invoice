# invoice.coffee
Invoices.allow
	insert: (userId, doc) ->
		true
	update: (userId, doc, fields, modifier) ->
		# userId == doc.owner
		true
	remove: (userId, doc) ->
		# userId == doc.owner
		true