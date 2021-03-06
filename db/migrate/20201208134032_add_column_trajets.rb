class AddColumnTrajets < ActiveRecord::Migration[6.0]
  def change
    add_column :trajets, :image_trajet_1, :text
    add_column :trajets, :image_trajet_2, :text
    add_column :trajets, :image_trajet_3, :text
    add_column :trajets, :image_trajet_4, :text
    add_column :trajets, :image_trajet_5, :text
    add_column :trajets, :image_trajet_6, :text
    add_column :trajets, :image_trajet_7, :text
    add_column :trajets, :image_trajet_8, :text
    add_column :trajets, :image_trajet_9, :text
    add_column :trajets, :image_trajet_10, :text
    add_column :trajets, :legende_image_trajet_1, :text
    add_column :trajets, :legende_image_trajet_2, :text
    add_column :trajets, :legende_image_trajet_3, :text
    add_column :trajets, :legende_image_trajet_4, :text
    add_column :trajets, :legende_image_trajet_5, :text
    add_column :trajets, :legende_image_trajet_6, :text
    add_column :trajets, :legende_image_trajet_7, :text
    add_column :trajets, :legende_image_trajet_8, :text
    add_column :trajets, :legende_image_trajet_9, :text
    add_column :trajets, :legende_image_trajet_10, :text
    add_column :trajets, :video_trajet_1, :text
    add_column :trajets, :video_trajet_2, :text
    add_column :trajets, :video_trajet_3, :text
    add_column :trajets, :video_trajet_4, :text
    add_column :trajets, :video_trajet_5, :text
    add_column :trajets, :son_trajet_1, :text
    add_column :trajets, :son_trajet_2, :text
    add_column :trajets, :son_trajet_3, :text
    add_column :trajets, :son_trajet_4, :text
    add_column :trajets, :son_trajet_5, :text
    add_column :trajets, :paragraphe_trajet_1, :text
    add_column :trajets, :paragraphe_trajet_2, :text
    add_column :trajets, :paragraphe_trajet_3, :text
    add_column :trajets, :paragraphe_trajet_4, :text
    add_column :trajets, :paragraphe_trajet_5, :text
    add_column :trajets, :titre_trajet, :text
    add_column :trajets, :sous_titre_trajet, :text
    add_column :trajets, :date_trajet, :text
    add_column :trajets, :lieu_trajet, :text
    add_column :trajets, :lien_url_trajet_1, :text
    add_column :trajets, :lien_url_trajet_2, :text
    add_column :trajets, :lien_url_trajet_3, :text
    add_column :trajets, :lien_url_trajet_4, :text
    add_column :trajets, :lien_url_trajet_5, :text

  end
end
