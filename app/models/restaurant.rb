class Restaurant < ApplicationRecord
	has_many :foods, dependent: :destroy
	validates :name, :address, :founder_name, presence: true
	validates :email, uniqueness: true, presence: true
	validates :number, uniqueness: true, presence: true, length: { is: 10 }

	def self.ransackable_attributes(auth_object = nil)
		["address", "created_at", "description", "email", "founder_name", "id", "name", "number", "updated_at"]
	end
end
