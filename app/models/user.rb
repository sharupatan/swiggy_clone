class User < ApplicationRecord
  has_one :cart, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def admin?
    user_role == 'admin'
  end

  def customer?
    user_role == 'customer'
  end
end
