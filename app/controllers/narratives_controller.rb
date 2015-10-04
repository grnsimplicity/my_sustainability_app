class NarrativesController < ApplicationController
  def index
    @issue = Issue.find(params[:issue_id])
    @narratives = @issue.narratives
  end

  def show
    @narrative = get_story_associated_with_issue
  end

  def new
    @narrative = Narrative.new
  end

  def create
    @narrative = Narrative.create(narrative_params)
    if @narrative.save
      redirect_to @narrative
    else
      render 'new'
    end
  end

  def update
    @issue = Issue.find(params[:topic])
    @narrative = @issue.narrative.update(narrative_params)
  end

private

  def narrative_params
    params.require(:narrative).permit(:title, :description, :text, :result, :people, :location, :templates, :image_url, :topic)
  end

  def get_story_associated_with_issue
    @issue = Issue.find(params[:issue_id])
    @stories = @issue.narratives
 end

end
