require 'rubygems'
require 'httparty'

class AdamApi

	include HTTParty
	base_uri "edutechional-resty.herokuapp.com/"

	def posts
		self.class.get('/posts.json')
	end
end

edutechional_resty = AdamApi.new
puts edutechional_resty.posts