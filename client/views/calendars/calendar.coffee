Template.calendar.onRendered ->
	this.$('.calendar').css 'background', 'url("/One_Hand_One_Heart.jpg") no-repeat'
	this.$('.calendar').css 'background-size', '100% 100%'

Template.calendar.helpers
	textsDays: -> 
		DayCards.find()
	completeTextsDays: ->
		calendar = i: day for day in [moment().date() + 1..moment().daysInMonth()]
			
			
	