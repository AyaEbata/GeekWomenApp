class CreateGeekWomen < ActiveRecord::Migration[5.0]
  def change
    create_table :geek_women do |t|
      t.string :name
      t.text :message
      t.string :picture

      t.timestamps
    end
  end
end
