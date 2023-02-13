class CreateFlopssips < ActiveRecord::Migration[7.0]
  def change
    create_table :flopssips do |t|
      t.string :title
      t.text :content
      t.belongs_to :user

      t.timestamps
    end
  end
end
