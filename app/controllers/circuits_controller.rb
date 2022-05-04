class CircuitsController < ApplicationController



  def index
    @site_section = "Encyclopedia: Circuits"
    @site_section_number = 8
    @stories = Story.live_date.published.alpha_headline_order.gpe_circuits_category.all 
  end

  def show
    @site_section = "Encyclopedia: Circuits"
    @site_section_number = 8
    
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

    def showlegacy
      @site_section = "Encyclopedia: Circuits"
       @site_section_number = 8
 
       if Story.find_by_legacy_filename("gpe/cir-" + params[:story] + ".html" )
          @story = Story.find_by_legacy_filename("gpe/cir-" + params[:story] + ".html" )

          if @story.category_id == 6 # make sure it is a cicuits story
            respond_to do |format|
              format.html { render 'show' }
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
end
