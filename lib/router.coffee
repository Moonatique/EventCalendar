Router.configure
	layoutTemplate: 'layout',
	loadingTemplate: 'loading',
	waitOn: ->
	 Meteor.subscribe 'dayCards', if Meteor.user() then 'claudia' else 'default'
	 Meteor.subscribe 'images'

Router.map ->
	@route 'calendar',
		path: '/'
	@route 'creation',
		path: '/creation'

requireLogin = ->
	if not Meteor.user()
		if Meteor.loggingIn()
			this.render this.loading
		else
			this.render 'defaultCalendar'
		this.stop()