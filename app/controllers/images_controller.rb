class ImagesController < ApplicationController
  def index
    @portfolios = Portfolio.all
    @sliders = Slider.all 
    @projects = Project.all
  end
end
