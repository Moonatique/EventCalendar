@Images = new FS.Collection("images",
	stores: [
		new FS.Store.GridFS("images")
	]	
)

Images.allow
	insert: -> return true
	remove: -> return true
	update: -> return true
	download: -> return true