
class Event 
	attr_accessor :start_date, :duration, :title, :attendees
	@@all_events = Array.new

	def initialize(start_date, duration, title, attendees)
		@start_date = Time.parse(start_date)
		@duration = duration.to_i
		@title = title.to_s
		@attendees = attendees
		@@all_events << self
		p "Event créé"
	end

	def postpone_24
		@start_date = @start_date + 86400
	end

	def end_date
		@end_date = @start_date + (@duration * 60)
	end

	def is_past?
		if @start_date < Time.now
			true
		else
			false
		end
	end

	def is_future?
		return (!is_past?)
	end

	def is_soon?
		if @start_date - Time.now <= 1800 && @start_date - Time.now >=0
			true
		else
			false
		end
	end

	def to_s
		puts "Titre : #{@title}"
		puts "Date de début : #{@start_date}"
		puts "Durée : #{@duration} minutes"
		puts "Invités : #{@attendees}"
	end

	def self.all
		return @@all_events
	end

end
















































