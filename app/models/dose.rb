class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true

# cannot have same pair of cocktail and ingredient for one dosage type
# same as validates_uniqueness_of :cocktail, :scope => [:ingredient]
  validates_uniqueness_of :ingredient, :scope => [:cocktail]
end
