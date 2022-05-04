class RacesController < ApplicationController



  def index
    @site_section = "F1 2022 - Races"
    @site_section_number = 4
    @site_title = "Grandprix.com - F1 2021 - Races"
 
 
  end

  def standings
    @site_section = "F1 2022 - Standings"
    @site_section_number = 4
    @site_title = "Grandprix.com - F1 2022 - Standings"
 
 
  end

  def overview
    @site_section = "F1 2022 - Overview"
    @site_section_number = 4
    @site_title = "Grandprix.com - F1 2022 - Overview"    
    @stories = Story.live_date.published.current_race_number.home_page_order
 
 
  end    

  def show  
        @site_section = "F1 2022"
        @site_section_number = 4
        
         if Story.find_by_name_slug(params[:story])
            @story = Story.find_by_name_slug(params[:story])

        # grab other stories for the day
        @the_date = @story.date_live_on
        puts "Date: #{@the_date}"
        @other_stories = Story. where(:date_live_on => @the_date).live_date.published.home_page_order.news_and_race_category

            respond_to do |format|
              format.html { render layout: 'layouts/stories' }
             # format.html # show.html.erb
            end
        else
            logger.error "Attempt to access invalid page #{params[:id]}"
            flash[:error] = "The page you were looking for doesn't exist.\rYou may have mistyped the address or the page may have moved."
            redirect_to root_url
          end
    end
  

end
