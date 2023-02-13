class Tag < ApplicationRecord
  has_many :flopssips, through: :join_table_tag_flopssips
  has_many :join_table_tag_flopssips
end
