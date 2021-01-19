class ActionsController < ApplicationController
  def index
   @action =  Action.order(id: :desc)

  end

  def new
    @action = Action.new # needed to instantiate the form_for
  end

  def create
    @action = Action.new(action_params)
    if @action.save!
    redirect_to actions_path(@action)
    end
  end

  def edit
    @action = Action.find(params[:id])
  end

  def update
    @action = Action.find(params[:id])
    @action.update(action_params)
    # no need for app/views/restaurants/update.html.erb
    redirect_to action_path(@action)
  end

  def show
    @action = Action.find(params[:id])
 end

  def destroy
    @action = Action.find(params[:id])
    @action.destroy
    redirect_to actions_path
  end

  private

  def action_params
    params.require(:action).permit(:image_action, :titre_action, :sous_titre_action, :date_action, :lieu_action, :lien_action)
  end
end
