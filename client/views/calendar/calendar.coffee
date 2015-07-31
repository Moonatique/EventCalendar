Template.calendar.onRendered ->
	this.$('.calendar').css 'background', 'url("/fight_cats.jpg") no-repeat'
	this.$('.calendar').css 'background-size', '100% 100%'

Template.calendar.helpers
	textsDays: ->
		Calendars.find(date: moment().format('YYYY-MM'))
	completeTextsDays: ->
		calendar = i: day for day in [Calendars.find().count() + 1..moment().daysInMonth()]