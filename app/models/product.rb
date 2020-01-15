class Product < ApplicationRecord
	#Tilte validation: it is mendatory to have a title for a Product
	validates :title,
	presence: true

	#Description validation: it is mendatory to have an description for a Product
	validates_length_of :description, minimum: 5

  #Price validation: it is mendatory to have a price for a product and also that price need to be decimal
  validates :price, numericality: { greater_than_or_equal_to: 0 }

	#Image_product validation: it is mendatory to have an image for a Product
	validates :image_product,
	presence: true

	#Quantity validation: it is mendatory to have a quantity for a Product
	validates :quantity,
	presence: true,
	numericality: {only_integer: true }

	#Status validation: it is mendatory to have a status for a Product
	validates :status, inclusion: { in: [ true, false ] }

	#Associations: One product belong to one Company
  belongs_to :company

  #Delegations: One product can retrieve admin, country & sub_sectors refering to company (now we can do product.admin.firstname for example)
  delegate :admin, to: :company
  delegate :country, to: :company
  delegate :sub_sectors, to: :company

  #Active Storage associations for multiple photo_products & upload_image
 	has_one_attached :upload_image
 	has_many_attached :photo_products
end
