
class EventCreator < Event

	def initialize 
		puts "\nCommençons. Quel est le nom de l'événement ?"
		@title = gets.chomp.to_s

		puts "\nSuper. Quand aura-t-il lieu ?"
		@start_date = gets.chomp

		puts "\nAu top. Combien de temps va-t-il durer (en minutes) ?"
		@duration = gets.chomp.to_i

		puts "\nGénial. Qui va participer ? Balance leurs e-mails"
		@attendees = Array.new
		@attendees << gets.chomp

		Event.new(@start_date, @duration, @title, @attendees)

		puts "\nSuper, c'est noté, ton évènement a été créé !"

	end
end