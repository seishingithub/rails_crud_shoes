class CreateShoes < ActiveRecord::Migration
  def change
    create_table :shoes do |t|
      t.string :shoe_type
      t.string :heel
    end
  end
end
