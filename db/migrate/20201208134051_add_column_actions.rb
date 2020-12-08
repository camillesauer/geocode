class AddColumnActions < ActiveRecord::Migration[6.0]
  def change
    add_column :actions, :titre_action, :text
    add_column :actions, :image_action, :text
    add_column :actions, :sous_titre_action, :text
    add_column :actions, :date_action, :text
    add_column :actions, :lieu_action, :text
    add_column :actions, :lien_action, :text
  end
end
