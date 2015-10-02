class NarrativesController < ApplicationController
  def index
    @narratives = Narratives.all
  end

  def show
    @issue = Issue.find(params[:issue_id])
    @narrative = Narrative.all
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
    @issue = Issue.find(params[:issue_id])
    @narrative = @issue.narrative.update(narrative_params)
      if @narrative.save
        redirect_to issue_narrative_path(@issue, @narrative)
      else
        render 'edit'
      end
  end

private

  def narrative_params
    params.require(:narrative).permit(:title, :description, :text, :result, :people, :location, :templates, :image_url)
  end

end
