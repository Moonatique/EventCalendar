Template.header.helpers
	welcome: -> if Meteor.user() then 'Hello my Love' else 'Hi Buddy'