class AddColumnPresses < ActiveRecord::Migration[6.0]
  def change
    add_column :presses, :titre_presse, :text
    add_column :presses, :image_presse, :text
    add_column :presses, :sous_titre_presse, :text
    add_column :presses, :date_presse, :text
    add_column :presses, :lieu_presse, :text
    add_column :presses, :lien_presse, :text
  end
end
