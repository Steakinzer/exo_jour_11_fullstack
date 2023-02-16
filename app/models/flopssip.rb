class Flopssip < ApplicationRecord
  belongs_to :user
  has_many :join_table_tag_flopssips
  has_many :tags, through: :join_table_tag_flopssips
  has_many :comments
  validates :title, 
  length: {in: 3..14},
  presence: true
  validates :content,
  presence: true
end
