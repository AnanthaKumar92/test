class Positon < ActiveRecord::Base
	has_many :offices
	def to_s
		self.work_position
	end
end
