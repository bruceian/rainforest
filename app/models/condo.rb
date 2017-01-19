class Condo < ActiveRecord::Base

  validates :den, :description, presence: true
  validates :number_of_rooms, :unit, :price, presence: {only_interger: true}

end
