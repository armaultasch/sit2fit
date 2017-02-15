class CreateStudios < ActiveRecord::Migration[5.0]
  def change
    create_table :studios do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.decimal :lat
      t.decimal :lng
      t.string :area
      t.string :activity
      t.datetime :time
      t.string :description

      t.timestamps
    end
  end
end
