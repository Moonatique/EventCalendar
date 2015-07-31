Template.littleCalendar.helpers
	'dayCards':->
		if not Session.equals('currentMonth','Month')
			day: d for d in [1..moment(Session.get('currentMonth'),'YYYY-MM').daysInMonth()]

Template.littleCalendar.events
	'click .cardForm': (e) ->
		p = $(e.target)
		while(!p.hasClass 'cardForm')
			p = p.parent()
		p = p.children 'p'
		Session.set 'currentDay', p.html()

		