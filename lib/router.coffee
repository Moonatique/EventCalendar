Router.configure
	layoutTemplate: 'layout',
	loadingTemplate: 'loading',
	waitOn: ->
	 Meteor.subscribe 'images'
	 Meteor.subscribe 'calendars', if Meteor.user() then Meteor.user()._id else 0

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