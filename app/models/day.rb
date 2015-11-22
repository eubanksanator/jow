class Day < ActiveRecord::Base
   belongs_to :week
   has_many :workouts

   accepts_nested_attributes_for :workouts
end
