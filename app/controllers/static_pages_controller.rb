class StaticPagesController < ApplicationController
  def home
    permitted_params = params.permit(:controller, :action)
  end

  def help
  end

  def about
  end

  def 
    contact 
  end 
end
