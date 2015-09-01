Template.calendar.onRendered ->
	this.$('.calendar').css 'background', 'url("/IMG_20150822_145352.jpg") no-repeat'
	this.$('.calendar').css 'background-size', '100% 100%'
	cards = this.$('.calendar').children('.card')
	for i in cards
		$(i).addClass 'today' if parseInt($(i).find('.recto p').html()) is moment().date()
		

Template.calendar.helpers
	textsDays: ->
		Calendars.find
			date: moment().format('YYYY-MM')
			day: $lt: moment().date() + 1
			dest: if Meteor.user() then Meteor.user().username else 'default'
	completeTextsDays: ->
		calendar = i: day for day in [moment().date() + 1..moment().daysInMonth()]