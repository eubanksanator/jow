class DropThisTable < ActiveRecord::Migration
  def change
   drop_table :day_of_weeks
  end
end
