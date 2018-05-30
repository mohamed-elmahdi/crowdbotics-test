class PhrasesController < ApplicationController

	@@remaining_array = *(1..Phrase.count)
	@@taken_array = []

	def home
		@phrases = []
		@@taken_array.each do |p_id|
			@phrases.append(Phrase.find(p_id))
		end
	end

	def get_random_phrase
		phrase_id = @@remaining_array.sample
		@phrase = Phrase.find(phrase_id)
		@@remaining_array.delete(phrase_id)
		@@taken_array.append(phrase_id)
		render layout: false
	end

	def clear_phrases
		@@remaining_array = *(1..Phrase.count)
		@@taken_array = []
	end

end
