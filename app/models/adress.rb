class Adress < ApplicationRecord
	#Associations: One Adress have many Companies
  belongs_to :city
  has_many :companies
end
