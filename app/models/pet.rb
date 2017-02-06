class Pet < ActiveRecord::Base
  TYPES_OF_PETS = ['Dog', 'Cat', 'Bird']

  #attr_accessible :age, :breed, :last_visit, :name, :category, :weight, :customer_id

  belongs_to :customer

  validates_inclusion_of :category, :in => TYPES_OF_PETS
end