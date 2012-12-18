class Property < ActiveRecord::Base
  attr_accessible :photo, :internet_included, :manager_id, :number_of_bathrooms, :number_of_bedrooms, :number_of_rooms, :owner_id, :owner_name, :parking_allotment, :period_type, :price_per_period, :property_type, :purpose, :street_address

  mount_uploader :photo, PhotoUploader

  validates :manager_id, :number_of_bathrooms, :number_of_bedrooms, :number_of_rooms, :owner_id, :owner_name, :parking_allotment, :period_type, :price_per_period, :property_type, :purpose, :street_address, :presence => true

  ROOMS = [['1'], ['2'], ['3'], ['4'], ['5'], ['6'], ['7'], ['8'], ['9'], ['10']]
  BEDROOMS = [['1'], ['2'], ['3'], ['4'], ['5'], ['6'], ['7'], ['8'], ['9']]
  BATHROOMS = [['1'], ['2'], ['3'], ['4'], ['5'], ['6'], ['7'], ['8']]
  PARKING = [['No Parking'], ['1'], ['2'], ['3'], ['3+']]
  PROPERTY = [['Barn'], ['Bungalow'], ['Chalet'], ['Condominium'], ['Detached'], ['Dormitory'], ['Flat'], ['Log Cabin'], ['Mansion'], ['Penthouse'], ['Semi-Detached'], ['Skyscraper'], ['Terraced'], ['Villa']]
  PERIOD = [['per Day'], ['Weekly'], ['Monthly'], ['Annualy']]
  PURPOSE = [['Asset'], ['Community Cause'], ['Cultural Tradition'], ['Equity'], ['Heritage'], ['Investment'], ['Primary Accomodation'], ['Tax Reduction']]
end
