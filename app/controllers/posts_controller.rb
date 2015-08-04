class PostsController < ApplicationController
  before_filter :log_in, :only => [:new, :create]

  def new
  end

  def create
  end

  def index
  end
end
