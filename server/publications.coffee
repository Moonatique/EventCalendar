Meteor.publish 'images', -> Images.find()
Meteor.publish 'calendars_dest', (user)->
	Calendars.find
		dest: user			
		date: moment().format('YYYY-MM')
		day: $lt: moment().date() + 1
Meteor.publish 'calendars_owner', (user)->
	Calendars.find
		owner: user

