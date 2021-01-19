class NewsController < ApplicationController
  def index
   @new =  New.order(id: :desc)

  end

  def new
    @new = New.new # needed to instantiate the form_for
  end

  def create
    @new = New.new(new_params)
    if @new.save!
    redirect_to news_path(@new)
    end

    # Will raise ActiveModel::ForbiddenAttributesError
  end

  def edit
    @new = New.find(params[:id])
  end

  def update
    @new = New.find(params[:id])
    @new.update(new_params)
    # no need for app/views/restaurants/update.html.erb
    redirect_to new_path(@new)
  end

  def show
    @new = New.find(params[:id])
 end

  def destroy
    @new = New.find(params[:id])
    @new.destroy
    redirect_to news_path
  end

  private

  def new_params
    params.require(:new).permit(:titre_new, :image_new, :sous_titre_new, :date_new, :lieu_new, :lien_new)
  end
end
