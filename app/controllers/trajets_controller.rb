class TrajetsController < ApplicationController
  def index
   @trajet =  Trajet.order(id: :desc)

  end

  def new
    @trajet = Trajet.new # needed to instantiate the form_for
  end

  def create
    @trajet = Trajet.new(trajet_params)
    if @trajet.save!
    redirect_to trajets_path(@trajet)
    end

    # Will raise ActiveModel::ForbiddenAttributesError
  end

  def edit
    @trajet = Trajet.find(params[:id])
  end

  def update
    @trajet = Trajet.find(params[:id])
    @trajet.update(trajet_params)
    # no need for app/views/restaurants/update.html.erb
    redirect_to trajet_path(@trajet)
  end
  def show
    @trajet = Trajet.find(params[:id])
 end

  def destroy
    @trajet = Trajet.find(params[:id])
    @trajet.destroy
    redirect_to trajets_path
  end

  private

  def trajet_params
    params.require(:trajet).permit(:image_trajet_1, :image_trajet_2, :image_trajet_3, :image_trajet_4, :image_trajet_5, :image_trajet_6, :image_trajet_7, :image_trajet_8, :image_trajet_9, :image_trajet_10, :legende_image_trajet_1, :legende_image_trajet_2, :legende_image_trajet_3, :legende_image_trajet_4, :legende_image_trajet_5, :legende_image_trajet_6, :legende_image_trajet_7, :legende_image_trajet_8, :legende_image_trajet_9, :legende_image_trajet_10, :video_trajet_1, :video_trajet_2, :video_trajet_3, :video_trajet_4, :video_trajet_5, :son_trajet_1, :son_trajet_2, :son_trajet_3, :son_trajet_4, :son_trajet_5, :paragraphe_trajet_1, :paragraphe_trajet_2, :paragraphe_trajet_3, :paragraphe_trajet_4, :paragraphe_trajet_5, :titre_trajet, :sous_titre_trajet, :date_trajet, :lieu_trajet, :lien_url_trajet_1, :lien_url_trajet_2, :lien_url_trajet_3, :lien_url_trajet_4, :lien_url_trajet_5)
  end
end
