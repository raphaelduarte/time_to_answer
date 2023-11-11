class Endereco < ApplicationRecord
  validates :street, presence: true, length: {minimum: 2, maximum: 100}
  validates :number, presence: true
  validates :neighborhood, presence: true, length: {minimum: 2, maximum: 100}
  validates :city, presence: true, length: {minimum: 2, maximum: 100}
  validates :state, presence: true, length: {minimum: 2, maximum: 50}
end
