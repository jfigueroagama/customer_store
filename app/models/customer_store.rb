class CustomerStore < ApplicationRecord
  has_many :clients
  has_many :addresses, as: :addressable
  has_many :phones, as: :phonable

  validates :name, presence: true
end
