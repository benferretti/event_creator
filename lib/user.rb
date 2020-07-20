require 'pry'

class User
	attr_accessor :email, :age
	@@all_users = Array.new

	def initialize (email, age)
		@email = email
		@age = age
		@@all_users << self
		p "créé"
	end

	def self.all
		return @@all_users
	end

	def self.find_by_email (email)
		User.all.each do |i|
			if i.email == email
				puts "Voici l'age du User trouvé : #{i.age}"
			end
		end
	end


end

