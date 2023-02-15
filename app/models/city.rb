class City < ApplicationRecord
  has_many :users
  has_many :flopssips, through: :users
end
