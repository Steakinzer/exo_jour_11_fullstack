class CreateJoinTableTagFlopssips < ActiveRecord::Migration[7.0]
  def change
    create_table :join_table_tag_flopssips do |t|
      t.belongs_to :tag
      t.belongs_to :flopssip
      t.timestamps
    end
  end
end
