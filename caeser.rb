require './lib/caeser_cypher.rb'
require 'sinatra' 
require  'sinatra/reloader' if development?

def pop_shift_select # Create shift factor options for 'shift_in' dropdown
	 (1..25).to_a.map {|x|"<option value = '#{x}'>#{x}</option>"}.join
end

shift_val = pop_shift_select 

get '/' do
	output = caeser_cipher(params["text_in"], params["shift_in"].to_i) if params["text_in"]
	erb :index, :locals => {:shift_val => shift_val, :output => output}

end