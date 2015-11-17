class Job < ActiveRecord::Base
	belongs_to :org
	accepts_nested_attributes_for :org
end
