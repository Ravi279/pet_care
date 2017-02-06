class Appointment < ActiveRecord::Base
  #attr_accessible :customer, :pet, :visit_on, :vet_id, :reason

  belongs_to :vet

  validates :vet_id, :presence => true
  validates :reason, :presence => true
  validate :not_previous


  private

  def not_previous
    if !visit_on.blank? && visit_on < Date.today
      errors.add(:visit_on, 'Only future date and time can be chosen')
    end
  end
end
