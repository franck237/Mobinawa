class Company < ApplicationRecord
	#Number validation: it is mendatory to have a phone number
validates :number,
presence: true

#name validation: it is mendatory to have a name for a Company
validates :name,
presence: true

#Description validation: it is mendatory to have a description for a Company
validates_length_of :description, minimum: 10

#Status validation: it is mendatory to have a status for a Company
validates :status, inclusion: { in: [ 0, 1, 2 ] }


#Associations: One company belong to one Admin, une sub_sector and one country	
  belongs_to :sub_sector
  belongs_to :admin
  belongs_to :country
  belongs_to :adress
  has_many :products

 #Active Storage associations for multiple photo_companies
 has_one_attached :upload_logo
 has_many_attached :photo_companies

#Delegations: One company can retrieve sectors refering to his sub_sector (now we can do company.sector.name for example)
 delegate :sector, to: :sub_sector
 delegate :city, to: :adress, allow_nil: true
 delegate :country, to: :city, allow_nil: true
end
