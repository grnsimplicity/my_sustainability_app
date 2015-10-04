class StaticPagesController < ApplicationController
  def index
      @issues = Issue.all
      @narratives= Narrative.all
  end

  def home
      @issues = Issue.all
      @narratives= Narrative.all
  end

  def test
  end
end
