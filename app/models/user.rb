class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  ROLES = %w[owner vet receptionist customer]

  # Setup accessible attributes for the model
  #attr_accessible :email, :password, :password_confirmation, :remember_me, :role

  def roles
    ROLES
  end

  def is?(role)
    roles.include?(role.to_s)
  end
end
