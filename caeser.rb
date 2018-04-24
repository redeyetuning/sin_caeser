require 'sinatra' 
require  'sinatra/reloader' if development?

get '/' do
	'Sinatra Caeser Cipher'
end