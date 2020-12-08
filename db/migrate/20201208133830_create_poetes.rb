class CreatePoetes < ActiveRecord::Migration[6.0]
  def change
    create_table :poetes do |t|

      t.timestamps
    end
  end
end
