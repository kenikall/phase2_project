class Concept < ActiveRecord::Base
  has_many :problems
  has_many :students
  belongs_to :student
end
