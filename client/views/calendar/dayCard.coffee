Template.dayCard.events
	'click .card': (e) ->
		p = $(e.target)
		while(!p.hasClass 'card')
			p = p.parent()
		
		if p.hasClass('active') 
			p.removeClass('active')
		else
			p.addClass('active')

		