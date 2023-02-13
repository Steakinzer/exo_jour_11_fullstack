class Flopssip < ApplicationRecord
  belongs_to :user
  has_many :join_table_tag_flopssips
  has_many :tags, through: :join_table_tag_flopssips
end
