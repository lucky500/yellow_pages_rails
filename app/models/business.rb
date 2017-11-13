class Business < ActiveRecord::Base
  belongs_to :category

  validates :name, :address, :city, :state, :zip, :phone_number, :website, :presence => true
end
