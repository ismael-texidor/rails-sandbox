class CreateSandboxes < ActiveRecord::Migration[6.0]
  def change
    create_table :sandboxes do |t|

      t.timestamps
    end
  end
end
