require 'sinatra' 
require  'sinatra/reloader' if development?

get '/' do
	'Sinatra Caeser Cipher'
end

def CaeserCipher string, shift= 0
		 
	output = []

	string.split("").each do |char|
		i = char.ord
		if i >= 65 && i <= 90
			if i + shift > 90
				output << (char.ord + shift - 26).chr
			elsif i + shift < 65
				output << (char.ord + shift + 26).chr
			else
				output << (char.ord + shift).chr
			end

		elsif i >= 97 && i <= 122
			if i + shift > 122
				output << (char.ord + shift - 26).chr
			elsif i + shift < 97
				output << (char.ord + shift + 26).chr
			else
				output << (char.ord + shift).chr
			end
		else
			output << char

		end
	end

	output.join

end