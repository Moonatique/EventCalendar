Template.littleCalendar.helpers
	'dayCards':->
		if not Session.equals('currentMonth','Month')
			Calendars.find(date:Session.get('currentMonth'))			

Template.littleCalendar.events
	'click .cardForm': (e) ->
		$('.cardForm').removeClass 'day-selected'
		p = $(e.target)
		while(!p.hasClass 'cardForm')
			p = p.parent()
		p.addClass 'day-selected'
		p = p.children 'p'

		card = Calendars.findOne
			day: parseInt(p.html())
			date: Session.get 'currentMonth'
		Session.set 'currentDay', card

		