class User < ActiveRecord::Base
  attr_accessible :photo, :admin, :contact_email, :contact_phone, :email, :name, :password, :password_confirmation
  has_secure_password
  validates_presence_of :password, :on => :create
  
  mount_uploader :photo, PhotoUploader

  validates :contact_email, :contact_phone, :email, :name, :password, :password_confirmation, :presence => true

  validates_format_of :email, :with => /^[\w]([^@\s,;]+)@(([\w-]+\.)+(com|edu|org|net|gov|mil|biz|info|qa))$/i, :message => "is not a valid format"
  validates_format_of :contact_email, :with => /^[\w]([^@\s,;]+)@(([\w-]+\.)+(com|edu|org|net|gov|mil|biz|info|qa))$/i, :message => "is not a valid format"
  validates_format_of :contact_phone, :with => /^(\+?\d{11}|\+?\d{3}?[-.]?\d{4}[-.]?\d{4})$/, :message => "should be 11 digits (country code needed) delimited with dashes only"

	scope :alphabetical, order('name')
	scope :admin, where('admin = ?', true)

	private

	def format_phone
	    contact_phone = self.contact_phone.to_s
	    contact_phone.gsub!(/[^0-9]/, "")
	    self.contact_phone = contact_phone
	end
end
