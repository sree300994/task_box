class Task < ActiveRecord::Base

	belongs_to :project
	validates_presence_of :title, :due_date, :project_id
	validates_numericality_of :project_id
end
