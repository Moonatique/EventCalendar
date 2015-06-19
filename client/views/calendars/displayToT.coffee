ToT = moment("201504030550", "YYYYMMDDHm")
Session.setDefault 'timeToT', ToT.diff(moment())
update=->
	Session.set('timeToT', Session.get('timeToT') - 1000) if Session.get('timeToT') isnt 0
setInterval(update,1000)

Template.displayToT.helpers
	timeToT: -> 
		t = parseInt(Session.get('timeToT')/1000)
		d = parseInt(t/3600/24)
		h = parseInt((t-d*3600*24)/3600)
		m = parseInt((t-(d*3600*24)-(h*3600))/60)
		s = parseInt(t - (d*24*3600) - (h*3600) - (m*60))
		"in "+d+" days, "+h+" hours "+m+" minutes and "+s+" secondes"