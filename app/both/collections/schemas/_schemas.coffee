# _schemas.coffee
@Schemas = {}
Schemas.InvoiceItem = new SimpleSchema
	description:
		label: "Item description"
		type: String
		optional: true
	quantity:
		label: "Quantity"
		min: 0
		type: Number
		decimal: true
		optional: false
	price:
		label: "Unit Cost"
		type: Number
		optional: false
		decimal: true
		min: 0
	total:
		label: "Total"
		decimal: true
		type: Number
		optional: true
		# autoForm:
		# autoValue: "234"
			# result = this.siblingField("price").value * this.siblingField("quantity").value
			# console.log 'hello'
			# 23.2





Schemas.Invoice = new SimpleSchema
	date: 
		label: "Date"
		type: Date
		optional: false
	invoice_number:
		label: "Invoice Number"
		type: String
		optional: false
	bill_to:
		label: "Bill To"
		type: String
		optional: false
		autoform:
			rows: 3
	project_name:
		label: "Project Name"
		type: String
		optional: true
	email:
		label: "Your Mail Addree"
		type: String
		optional: false
	remit:
		label: "Remittance"
		type: String
		optional: false
		autoform:
			rows: 3
	items:
		type: [Schemas.InvoiceItem]
		label: "Items"
		minCount: 1
		optional:false


