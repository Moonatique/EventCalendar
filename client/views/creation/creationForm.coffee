Session.setDefault 'currentDay', 0
Session.setDefault 'currentMonth', 'Month'
Template.creationForm.events
	# 'change #backImg':(event, template)->
	# 	file = new FS.File(event.target.files[0]) if event.target.files.length > 0
	# 	file.metadata = 
	# 		dest: 'default'

	# 	Images.insert(file, 
	# 		(err, fileObj)->
	# 			alert "upload of " + fileObj.url if !err
	# 	)
	'click #month-item': (e)->
		a= $(e.target)
		Session.set 'currentMonth', a.html()
	'click #save-day': (e)->
		dayCard = Session.get 'currentDay'
		dayCard.text = $('#textDay').val()
		Calendars.upsert dayCard._id, dayCard

Template.creationForm.helpers
	'currentDayForm':->
		Session.get 'currentDay'
	'currentMonth':->
		Session.get 'currentMonth'
	'monthsAvailable':->
		now = moment()
		month: now.month(m).format('YYYY-MM') for m in [now.month()..11] 
		