if Calendars.find(dest:'default').count() is 0
	now = moment()
	for m in [now.month()..11]
		for d in [1..now.month(m).daysInMonth()]
			Calendars.insert
				dest: 0
				owner: 0
				date: now.month(m).format("YYYY-MM")
				day: d
				text: 'day' + d + ' month' + m
				imgDay: "/fight_cats.jpg"