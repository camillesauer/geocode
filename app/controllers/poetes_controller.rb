class PoetesController < ApplicationController
  def index
   @poete =  Poete.order(id: :desc)

  end

  def new
    @poete = Poete.new # needed to instantiate the form_for
  end

  def create
    @poete = Poete.new(poete_params)
    if @poete.save!
    redirect_to poetes_path(@poete)
    end

    # Will raise ActiveModel::ForbiddenAttributesError
  end

  def edit
    @poete = Poete.find(params[:id])
  end

  def update
    @poete = Poete.find(params[:id])
    @poete.update(poete_params)
    # no need for app/views/restaurants/update.html.erb
    redirect_to poete_path(@poete)
  end
  def show
    @poete = Poete.find(params[:id])
 end

  def destroy
    @poete = Poete.find(params[:id])
    @poete.destroy
    redirect_to poetes_path
  end

  private

  def poete_params
    params.require(:poete).permit(:image_poete_1, :image_poete_2, :image_poete_3, :image_poete_4, :image_poete_5, :image_poete_6, :image_poete_7, :image_poete_8, :image_poete_9, :image_poete_10, :legende_image_poete_1, :legende_image_poete_2, :legende_image_poete_3, :legende_image_poete_4, :legende_image_poete_5, :legende_image_poete_6, :legende_image_poete_7, :legende_image_poete_8, :legende_image_poete_9, :legende_image_poete_10, :video_poete_1, :video_poete_2, :video_poete_3, :video_poete_4, :video_poete_5, :son_poete_1, :son_poete_2, :son_poete_3, :son_poete_4, :son_poete_5, :introduction_poete, :paragraphe_poete_1, :paragraphe_poete_2, :paragraphe_poete_3, :paragraphe_poete_4, :paragraphe_poete_5, :titre_poete, :sous_titre_poete, :date_poete, :lieu_poete, :lien_url_poete_1, :lien_url_poete_2, :lien_url_poete_3, :lien_url_poete_4, :lien_url_poete_5)
  end
end


