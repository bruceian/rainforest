class Condo < ActiveRecord::Base

  validates_uniqueness_of :unit
  validates :description, presence: true
  validates :number_of_rooms, :unit, :price, presence: {only_interger: true}
  validates :den, inclusion: [true, false]
end
