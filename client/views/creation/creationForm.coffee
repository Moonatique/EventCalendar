Template.creationForm.events
	'change #backImg':(event, template)->
		file = new FS.File(event.target.files[0]) if event.target.files.length > 0
		file.metadata = 
			dest: 'default'

		Images.insert(file, 
			(err, fileObj)->
				alert "upload of " + fileObj.url if !err
		)