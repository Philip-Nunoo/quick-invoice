# invoice_hooks.coffee
insertInvoiceObject = 
	onError: (formType, error)->
		alert error
	onSuccess: ()->
		alert 'good'
		
AutoForm.hooks
	insertInvoice: 
		insertInvoiceObject
