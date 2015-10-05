class NarrativesController < ApplicationController

  before_action :authenticate_user!

# under issue
  def index
    @issue = Issue.find(params[:issue_id])
    @narratives = @issue.narratives
  end

  def show
      @issue = Issue.find(params[:issue_id])
      @narrative = Narrative.find(params[:id])
  end

# not under issue
  def new
    @narrative = Narrative.new
  end

  def create
    @narrative = Narrative.create(narrative_params)
    if @narrative.save

      redirect_to issue_narratives_path(:id)
    else
      render 'new'
    end
  end

  def update
    @issue = Issue.find(params[:topic])
    @narrative = @issue.narrative.update(narrative_params)
  end

  def destroy
    @issue = Issue.find(params[:issue_id])
    @narrative = @issue.narrative.destroy
    redirect_to issue_narrative_path
  end


private

  def narrative_params
    params.require(:narrative).permit(:title, :description, :text, :result, :people, :location, :templates, :image_url, issue_attributes: [:id, :topic])
  end



end
