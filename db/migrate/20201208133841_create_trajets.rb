class CreateTrajets < ActiveRecord::Migration[6.0]
  def change
    create_table :trajets do |t|

      t.timestamps
    end
  end
end
