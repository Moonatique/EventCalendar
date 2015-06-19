Template.dayCard.events
	'click .card': (e) ->
		if $(e.target).hasClass 'card'
			p = $(e.target)
		else
			p = $(e.target).parent()

		if p.hasClass('active') 
			p.removeClass('active')
		else
			p.addClass('active')

		