class Vet < ActiveRecord::Base
  #attr_accessible :address, :city, :experience, :name, :school, :state, :zip

  has_many :appointments

  validates :name, :presence => true
  validates :name, :length => { :maximum => 35 }
  validates :experience, :inclusion => { :in => 1..100 }
  validates :zip, :numericality => true
  validates :zip, :length => { :maximum => 5 }
end
