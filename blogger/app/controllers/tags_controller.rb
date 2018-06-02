class TagsController < ApplicationController
  def index
    @tag = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
  end

  def destroy
    @tag = tag.find(params[:id]).destroy

    flash.notice = "Tag '#{@tag.title}' Deleted!"
  end

end
