class Employee < ActiveRecord::Base
	has_many :offices
	def to_s
		self.name
	end
end
