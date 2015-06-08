# invoices.coffee
@Invoices = new Mongo.Collection "Invoices"
Invoices.attachSchema Schemas.Invoice
