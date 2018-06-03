class PhrasesController < ApplicationController

	def home
		if session[:phrases]
			@phrases = session[:phrases]
		else
			@phrases = []
		end
	end

	def get_random_phrase
		session[:phrases] ||= []
		taken = []
		session[:phrases].each do |p|
			taken.append(p["id"])
		end
		@phrase = Phrase.order("RANDOM()").where.not(id: taken).limit(1).first
		session[:phrases].append(@phrase)
		render layout: false
	end

	def clear_phrases
		session[:phrases] = []
	end

end
