class InitialSchema < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :name
      t.string :file_path
      t.timestamps
    end
    create_table :directories do |t|
      t.string :name
      t.string :location
      t.integer :image_count
      t.timestamps
    end
  end
end
