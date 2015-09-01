Router.configure
	layoutTemplate: 'layout',
	loadingTemplate: 'loading',
	waitOn: ->
	 Meteor.subscribe 'images'
	 Meteor.subscribe 'calendars_dest', if Meteor.user() then Meteor.user().username else 'default'
	 Meteor.subscribe 'calendars_owner', if Meteor.user() then Meteor.user().username else 'default'
	 
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