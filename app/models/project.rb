class Project < ActiveRecord::Base

	has_many :tasks
	belongs_to :client
	validates_presence_of :name, :client_id, :start_date, :end_date
	validates_numericality_of :client_id
	validate :check_date

	private
	def check_date
		if self.end_date < self.start_date
			self.errors.add(errors: "the date you are giving doesn't match")
		end
	end
end
