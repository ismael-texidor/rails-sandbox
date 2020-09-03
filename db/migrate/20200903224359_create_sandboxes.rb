class CreateSandboxes < ActiveRecord::Migration[6.0]
  def change
    create_table :sandboxes do |t|
      t.integer :sand_grains
      t.string :box_name

      t.timestamps
    end
  end
end
