class Week < ActiveRecord::Base
   has_many :days
   has_many :workouts
   has_many :workouts, through: :days

   accepts_nested_attributes_for :days
   # accepts_nested_attributes_for :workouts
end
