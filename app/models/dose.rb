class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true
  validates :cocktail, presence: true
  validates :ingredient, presence: true
  validates :ingredient, uniqueness: {scope: :cocktail}
  # validates :cocktail, uniqueness: {scope: :ingredient}
end

=begin
to generate this file i did this in terminal:
rails g model dose cocktail:references ingredient:references description:string

line 7: scope cocktail means ingredient and cocktail PAIR must be unique. therefore writing it the opposite way like line 8 is also
good.
=end
