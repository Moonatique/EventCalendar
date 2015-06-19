if DayCards.find().count() is 0
	numOfDay = moment().daysInMonth()
	for day in [1..numOfDay] 
			DayCards.insert
				i: day
				imgDay:  "/fight_cats.jpg"	
				dest: "claudia"	
				
	for day in [1..numOfDay] 
			DayCards.insert
				i: day + 1
				imgDay:  "/fight_cats.jpg"	
				dest: "default"	
