Meteor.publish 'dayCards', (dest)->
	maxD = moment().date() + 1
	DayCards.find
		dest: dest
		i: $lt: maxD

Meteor.publish 'images', -> Images.find()
