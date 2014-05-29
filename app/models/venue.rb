class Venue
  include Mongoid::Document
  include Geocoder::Model::Mongoid

  field :name, type: String
  field :address, type: String
  field :phone, type: String
  field :logo, type: String
  field :mini_desc, type: String
  field :website, type: String
  field :email, type: String
  field :more_details, type: String
  field :coordinates, :type => Array

  geocoded_by :address
  before_save :geocode
  after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }
  before_validation :geocode
end
