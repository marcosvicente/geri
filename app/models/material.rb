class Material < ApplicationRecord
  validates :name, uniqueness: true
  validates :quantify, presence: true
  validates :quantify, :numericality => { :greater_than_or_equal_to => 0 }

end
