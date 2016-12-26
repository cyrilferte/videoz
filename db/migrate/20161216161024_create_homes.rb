class CreateHomes < ActiveRecord::Migration[5.0]
  def change
    create_table :homes do |t|
      t.string :film
      t.string :group

      t.timestamps
    end
  end
end
