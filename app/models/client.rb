class Client < ApplicationRecord
  belongs_to :customer_store
  has_many :addresses, as: :addressable
  has_many :phones, as: :phonable

  validates :name, presence: true
end
