class Cocktail < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
end

=begin
line 4: through is use. think logically. drawing in the schema will make tons more sense. basically through is what connects
ingredients and cocktail.
=end
