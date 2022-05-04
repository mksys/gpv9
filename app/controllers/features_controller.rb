class FeaturesController < ApplicationController



  def index
    @stories = Story.live_date.published.home_page_order.features_category.page(params[:page]).per(20)
    @site_title = "Grandprix.com - Features"
    @site_section = "Features"
    @site_section_number = 3
    # render :layout => 'section_index'
  end

  def show
    @stories = Story.live_date.published.home_page_order.features_category.limit(10) 
     @site_section = "Features"
    
         if Story.find_by_name_slug(params[:story])
            @story = Story.find_by_name_slug(params[:story])

            respond_to do |format|
              format.html { render layout: 'layouts/stories' }
              #format.html # show.html.erb
            end
        else
            logger.error "Attempt to access invalid page #{params[:id]}"
            flash[:error] = "The page you were looking for doesn't exist.\rYou may have mistyped the address or the page may have moved."
            redirect_to root_url
          end
    end

    def feed
        @stories = Story.live_date.published.home_page_order.features_category.limit(25) 
         respond_to do |format|
          format.rss { render :layout => false }
        end
    end


end
