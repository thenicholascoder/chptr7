class ApplicationController < ActionController::Base
  def hello
    render html: "hello, world"
  end

  def home
    # Your code for the home action
  end

  def help
    # Your code for the home action
  end

  def about
    # Your code for the home action
  end

  def contact
    # Your code for the home action
  end

  include SessionsHelper
end