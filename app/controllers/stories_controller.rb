class StoriesController < ApplicationController
  before_action :set_story, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  
  
  # GET /stories
  # GET /stories.json
  def index
     @stories = Story.home_page_order.page params[:page]
     @current_user = current_user.first_name + " " + current_user.last_name
     
  end

  # GET /stories/1
  # GET /stories/1.json
  def show
  end

  # GET /stories/new
   def new
     @current_user = current_user.first_name + " " + current_user.last_name
     @story = Story.new
     @story.publish = 1
     @story.priority = 5
     @story.author = @current_user
     @story.date_live_at = DateTime.now + 3.minutes
     
     
     if(params['typeofstory'] == "GMM") 
       @story.publish = 1
       @story.category_id = 1
       @story.ornament_id = 1
       @story.priority = 5
       @story.author = "GMM"
#       @story.body_html = "<p><span class=\"gmm\">(GMM)</span></p>"
    elsif(params['typeofstory'] == "Straight Talk") 
          @story.publish = 1
          @story.category_id = 2
          @story.ornament_id = 3
          @story.priority = 5
          @story.author = "Luis Vasconcelos"
          @story.feature_type = "Straight Talk"
    end

end

   # GET /stories/1/edit
  def edit
  end

  # POST /stories
  # POST /stories.json
  def create
    @story = Story.new(story_params)

    respond_to do |format|
      if @story.save
        format.html { redirect_to @story, notice: 'Story was successfully created.' }
        format.json { render :show, status: :created, location: @story }
      else
        format.html { render :new }
        format.json { render json: @story.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stories/1
  # PATCH/PUT /stories/1.json
  def update
    respond_to do |format|
      if @story.update(story_params)
        format.html { redirect_to @story, notice: 'Story was successfully updated.' }
        format.json { render :show, status: :ok, location: @story }
      else
        format.html { render :edit }
        format.json { render json: @story.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stories/1
  # DELETE /stories/1.json
  def destroy
    @story.destroy
    respond_to do |format|
      format.html { redirect_to stories_url, notice: 'Story was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_story
      @story = Story.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def story_params
      params.require(:story).permit! 
     end

    
      # private
      # 
      # def person_params
      #   params.require(:person).permit(:name, :age)
      
      # params.require(:log_entry).permit!
      # end
  
end
