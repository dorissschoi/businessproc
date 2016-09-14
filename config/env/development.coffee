module.exports =
	hookTimeout:	400000
	
	port:			1337
		
	oauth2:
		verifyURL:			"https://mob.myvnc.com/org/oauth2/verify/"
		tokenURL:			"https://mob.myvnc.com/org/oauth2/token/"
		scope:				["https://mob.myvnc.com/org/users"]

	promise:
		timeout:	10000 # ms

	models:
		connection: 'mongo'
		migrate:	'alter'
	
	connections:
		mongo:
			adapter:	'sails-mongo'
			driver:		'mongodb'
			url: 'mongodb://bprocApp_mongo_doris/bprocApp' #dev

	file:
		opts:
			adapter:	require 'skipper-gridfs'
			uri:		'mongodb://bprocApp_mongo_doris/file'
			maxBytes:	10240000	# 10MB
		img:
			resize:		'25%'
					
	log:
		level: 'silly'