class StoriesController < ApplicationController
  def index
    @story = Story.order('RANDOM()').first
    @current_time = Time.now
    @stories = Story.all #added by GV to test for story index page 
  end
  def new 
    @story = Story.new
  end
  def create
    @story = Story.new(story_params)
    if @story.save
      flash[:notice] = 'Story submission succeeded!'
      redirect_to stories_path
    else
      render action:'new'
    end
  end  
  
  def show
    @story = Story.find(params[:id])
  end  
  
  private #secure input code
  def story_params
    params.require(:story).permit(:name,:link)
  end
end