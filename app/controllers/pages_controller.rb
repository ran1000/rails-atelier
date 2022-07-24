class PagesController < ApplicationController
  def home
  end

  def about
    tags = ["art", "inspiration", "notes", "projects", "todigital"]
    if tags.include?(params[:tag])
      params[:tag] = params[:tag]
    else
      params[:tag] = "Tag not included"
    end
  end
end
