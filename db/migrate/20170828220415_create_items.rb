class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :title
      t.string :owner
      t.text :details
      t.boolean :complete

      t.timestamps
    end
  end
end
