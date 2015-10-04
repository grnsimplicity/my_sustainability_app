class StaticPagesController < ApplicationController
  def index
      @issues = Issue.all
  end

  def home
      @issues = Issue.all
  end

  def test
  end
end
