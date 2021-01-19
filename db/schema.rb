# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_01_19_123128) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actions", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "titre_action"
    t.text "image_action"
    t.text "sous_titre_action"
    t.text "date_action"
    t.text "lieu_action"
    t.text "lien_action"
  end

  create_table "news", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "titre_new"
    t.text "image_new"
    t.text "sous_titre_new"
    t.text "date_new"
    t.text "lieu_new"
    t.text "lien_new"
  end

  create_table "pages", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "poetes", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "image_poete_1"
    t.text "image_poete_2"
    t.text "image_poete_3"
    t.text "image_poete_4"
    t.text "image_poete_5"
    t.text "image_poete_6"
    t.text "image_poete_7"
    t.text "image_poete_8"
    t.text "image_poete_9"
    t.text "image_poete_10"
    t.text "legende_image_poete_1"
    t.text "legende_image_poete_2"
    t.text "legende_image_poete_3"
    t.text "legende_image_poete_4"
    t.text "legende_image_poete_5"
    t.text "legende_image_poete_6"
    t.text "legende_image_poete_7"
    t.text "legende_image_poete_8"
    t.text "legende_image_poete_9"
    t.text "legende_image_poete_10"
    t.text "video_poete_1"
    t.text "video_poete_2"
    t.text "video_poete_3"
    t.text "video_poete_4"
    t.text "video_poete_5"
    t.text "son_poete_1"
    t.text "son_poete_2"
    t.text "son_poete_3"
    t.text "son_poete_4"
    t.text "son_poete_5"
    t.text "introduction_poete"
    t.text "paragraphe_poete_1"
    t.text "paragraphe_poete_2"
    t.text "paragraphe_poete_3"
    t.text "paragraphe_poete_4"
    t.text "paragraphe_poete_5"
    t.text "titre_poete"
    t.text "sous_titre_poete"
    t.text "date_poete"
    t.text "lieu_poete"
    t.text "lien_url_poete_1"
    t.text "lien_url_poete_2"
    t.text "lien_url_poete_3"
    t.text "lien_url_poete_4"
    t.text "lien_url_poete_5"
  end

  create_table "trajets", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "image_trajet_1"
    t.text "image_trajet_2"
    t.text "image_trajet_3"
    t.text "image_trajet_4"
    t.text "image_trajet_5"
    t.text "image_trajet_6"
    t.text "image_trajet_7"
    t.text "image_trajet_8"
    t.text "image_trajet_9"
    t.text "image_trajet_10"
    t.text "legende_image_trajet_1"
    t.text "legende_image_trajet_2"
    t.text "legende_image_trajet_3"
    t.text "legende_image_trajet_4"
    t.text "legende_image_trajet_5"
    t.text "legende_image_trajet_6"
    t.text "legende_image_trajet_7"
    t.text "legende_image_trajet_8"
    t.text "legende_image_trajet_9"
    t.text "legende_image_trajet_10"
    t.text "video_trajet_1"
    t.text "video_trajet_2"
    t.text "video_trajet_3"
    t.text "video_trajet_4"
    t.text "video_trajet_5"
    t.text "son_trajet_1"
    t.text "son_trajet_2"
    t.text "son_trajet_3"
    t.text "son_trajet_4"
    t.text "son_trajet_5"
    t.text "paragraphe_trajet_1"
    t.text "paragraphe_trajet_2"
    t.text "paragraphe_trajet_3"
    t.text "paragraphe_trajet_4"
    t.text "paragraphe_trajet_5"
    t.text "titre_trajet"
    t.text "sous_titre_trajet"
    t.text "date_trajet"
    t.text "lieu_trajet"
    t.text "lien_url_trajet_1"
    t.text "lien_url_trajet_2"
    t.text "lien_url_trajet_3"
    t.text "lien_url_trajet_4"
    t.text "lien_url_trajet_5"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
