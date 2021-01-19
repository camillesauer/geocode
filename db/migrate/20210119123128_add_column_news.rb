class AddColumnNews < ActiveRecord::Migration[6.0]
  def change
    add_column :news, :titre_new, :text
    add_column :news, :image_new, :text
    add_column :news, :sous_titre_new, :text
    add_column :news, :date_new, :text
    add_column :news, :lieu_new, :text
    add_column :news, :lien_new, :text
  end
end
