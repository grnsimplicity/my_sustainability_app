class NarrativesController < ApplicationController
  def index
    @narratives = Narrative.all
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
    params.require(:narrative).permit(:title, :description, :text, :result, :people, :location, :templates, :image_url, :topic)
  end

  def get_story_associated_with_issue
    @issue = Issue.find(params[:topic])
    @narrative = Narrative.find(params[:topic])
    if @issue=@narrative
     redirect_to narrative_path(@narrative)
   else
     "There's currently no stories."
   end
 end

 def get_narrative
   @issues = Issue.find(params[:topic])
   @narratives = Narrative.find(params[:topic])
 end


end
