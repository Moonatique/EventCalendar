if Calendars.find(dest:'default').count() is 0
	now = moment()
	for m in [now.month()..11]
		for d in [1..now.month(m).daysInMonth()]
			Calendars.insert
				dest: 'default'
				owner: 'default'
				date: now.month(m).format("YYYY-MM")
				day: d
				text: 'day:' + d + ' month: ' + m
				imgDay: "/fight_cats.jpg"
if Calendars.find(dest:'graou').count() is 0
	rest = moment("20150926", "YYYYMMDD").diff(moment("20150801", "YYYYMMDD"))/1000/3600/24
	for d in [1..31]
		Calendars.insert
				dest: 'graou'
				owner: 'master'
				date: moment().month(7).format("YYYY-MM")
				day: d
				text: rest + ' before see you <3'
				imgDay: "/IMG_20150511_184912_1.jpg"
		rest--
	for d in [1..26]
		Calendars.insert
				dest: 'graou'
				owner: 'master'
				date: moment().month(8).format("YYYY-MM")
				day: d
				text: rest + ' before see you <3'
				imgDay: "/IMG_20150511_184912_1.jpg"
		rest--
