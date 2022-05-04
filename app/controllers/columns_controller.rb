class ColumnsController < ApplicationController



  def index
    @stories = Story.live_date.published.home_page_order.columns_category.limit(10) 
  end

  def show
    
         if Story.find_by_name_slug(params[:story])
            @story = Story.find_by_name_slug(params[:story])
          
            respond_to do |format|
              format.html # show.html.erb
            end
        else
            logger.error "Attempt to access invalid page #{params[:id]}"
            flash[:error] = "The page you were looking for doesn't exist.\rYou may have mistyped the address or the page may have moved."
            redirect_to root_url
          end
    end


end
