class NewsController < ApplicationController


  def index
    @stories = Story.live_date.published.home_page_order.news_and_race_category.page(params[:page]).per(100)
    @site_section = "News"
    @site_title = "Grandprix.com - News"
    @site_section_number = 2
    # render :layout => 'section_index'
  end

  def show
    @site_section = "News"
    @site_section_number = 2
    
         if Story.find_by_name_slug(params[:story])
            @story = Story.find_by_name_slug(params[:story])
            
            if @story.category_id == 1 # make sure it is a news story
              @site_title = @story.headline
              @site_description = @story.abstract
              
              # grab other stories for the day
              @the_date = @story.date_live_on
              puts "Date: #{@the_date}"
              @other_stories = Story. where(:date_live_on => @the_date).live_date.published.home_page_order.news_and_race_category
              # published.where(["headline <= ?", "Liberty considers F1 qualifying race"])
              #.home_page_order.news_and_race_category
              
              #
              respond_to do |format|
                format.html { render layout: 'layouts/stories' }
                 # show.html.erb
              end
            else
              logger.error "Attempt to access invalid page #{params[:id]}"
              flash[:error] = "The page you were looking for doesn't exist.\rYou may have mistyped the address or the page may have moved."
              redirect_to root_url             
            end
        else
            logger.error "Attempt to access invalid page #{params[:id]}"
            flash[:error] = "The page you were looking for doesn't exist.\rYou may have mistyped the address or the page may have moved."
            redirect_to root_url
          end
    end
  
  
  def showlegacy
    @site_section = "News"
    @site_section_number = 2
    
     if Story.find_by_legacy_filename(params[:story] + ".html" )
        @story = Story.find_by_legacy_filename(params[:story] + ".html" )
        
        if @story.category_id == 1 # make sure it is a news story
          respond_to do |format|
            format.html # show.html.erb
          end
        else
          logger.error "Attempt to access invalid page #{params[:id]}"
          flash[:error] = "The page you were looking for doesn't exist.\rYou may have mistyped the address or the page may have moved."
          redirect_to root_url             
        end
    else
        logger.error "Attempt to access invalid page #{params[:id]}"
        flash[:error] = "The page you were looking for doesn't exist.\rYou may have mistyped the address or the page may have moved."
        redirect_to root_url
      end
    
  end
  
  def feed
      @stories = Story.live_date.published.home_page_order.news_and_race_category.limit(150)
      respond_to do |format|
        format.rss { render :layout => false }
      end
  end
  
end
