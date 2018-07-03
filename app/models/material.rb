class Material < ApplicationRecord
  validates :name, uniqueness: true
  validates :quantify, presence: true



end
