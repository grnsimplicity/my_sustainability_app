class IssuesController < ApplicationController
  def index
    @issues = Issue.all
  end

  def show
    @issue = Issue.find(params[:id])
  end

  def new
    @issue = Issue.new
  end

  def create
    @issue = Issue.new
    if @issue.save
      redirect_to @issue
    else
      render 'new'
    end
  end

  def update
    @issue = Issue.find(params[:id])
      if @issue.update(issue_params)
        redirect_to issue_path
      else
        render 'edit'
      end
  end

  def show
  end


private

def issue_params
  params.require(:issue).permit(:topic, :issue_image)
end

end
