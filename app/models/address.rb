class Address < ApplicationRecord
    validates :street_number, presence: true
    validates :street_address, presence: true
    validates :city, presence: true
    validates :province, presence: true
    validates :area_code, presence: true
end
