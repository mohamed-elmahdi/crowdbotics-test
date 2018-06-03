class PhrasesController < ApplicationController

	def home
		if session[:phrases]
			@phrases = session[:phrases]
		else
			@phrases = []
		end
	end

	def get_random_phrase
		taken = []
		session[:phrases].each do |p|
			taken.append(p["id"])
		end
		@phrase = Phrase.order("RANDOM()").where.not(id: taken).limit(1).first
		if session[:phrases]
			session[:phrases].append(@phrase)
		else
			session[:phrases] = [@phrase]
		end
		render layout: false
	end

	def clear_phrases
		session[:phrases] = []
	end

end
