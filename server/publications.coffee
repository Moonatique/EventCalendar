Meteor.publish 'images', -> Images.find()
Meteor.publish 'calendars', (user)->
	now = moment()
	Calendars.find
		$or:
			[
				date: now.format('YYYY-MM')
				dest: user			
				day: $lt: now.date() + 1
				
				owner: user				
			]
		