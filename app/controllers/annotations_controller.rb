class AnnotationsController < ApplicationController
  def index
    @annotations = Annotation.all
  end

  def show
    @annotation = Annotation.find(params[:id])
  end
end
