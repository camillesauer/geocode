class PressesController < ApplicationController
    def index
   @presse =  Presse.order(id: :desc)

  end

  def new
    @presse = Presse.new # needed to instantiate the form_for
  end

  def create
    @presse = Presse.new(presse_params)
    if @presse.save!
    redirect_to presses_path(@presse)
    end

    # Will raise ActiveModel::ForbiddenAttributesError
  end

  def edit
    @presse = Presse.find(params[:id])
  end

  def update
    @presse = Presse.find(params[:id])
    @presse.update(presse_params)
    # no need for app/views/restaurants/update.html.erb
    redirect_to presses_path(@presse)
  end
  def show
    @presse = Presse.find(params[:id])
 end

  def destroy
    @presse = Presse.find(params[:id])
    @presse.destroy
    redirect_to presses_path
  end

  private

  def presse_params
    params.require(:presse).permit(:titre_presse, :image_presse, :sous_titre_presse, :date_presse, :lieu_presse, :lien_presse)
  end

end
