Promise = require 'bluebird'
		
module.exports =

	req: (method, url, data, opts) ->
		if _.isUndefined opts
			opts = 
				headers:
					Authorization:	"Basic " + new Buffer("#{sails.config.activiti.username}:#{sails.config.activiti.password}").toString("base64")
					'Content-Type': 'application/json'
				json: true

		sails.services.rest[method] {}, url, opts, data

	getXML: (url) ->
		opts = 
			headers:
				Authorization:	"Basic " + new Buffer("#{sails.config.activiti.username}:#{sails.config.activiti.password}").toString("base64")
			parse: 'XML'
		
		sails.log.debug "getXML url: #{url}"		
		@req "get", url, {}, opts
		
	deployXML: (url, data) ->
		opts = 
			headers:
				Authorization:	"Basic " + new Buffer("#{sails.config.activiti.username}:#{sails.config.activiti.password}").toString("base64")
				'Content-Type': 'multipart/form-data'
			multipart: true
					
		@req "post", url, data, opts

