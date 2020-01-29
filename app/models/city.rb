class City < ApplicationRecord
	#Associations: One city have many Adress, many companies through adress
  belongs_to :country
  has_many :adresses
  has_many :companies, through: :adresses

  accepts_nested_attributes_for :adresses
end
