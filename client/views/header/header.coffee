Template.header.helpers
	username: -> if Meteor.user() then Meteor.user().username else 'Buddy'