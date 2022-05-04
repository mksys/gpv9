class TyresController < ApplicationController



  def index
    @site_section = "Encyclopedia: Tyres"
    @site_section_number = 8

    @stories = Story.live_date.published.home_page_order.gpe_tyres_category.all 
  end

  def show
    @site_section = "Encyclopedia: Tyres"
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
      @site_section = "Encyclopedia: Tyres"
      @site_section_number = 8

        if Story.find_by_legacy_filename("gpe/tir-" + params[:story] + ".html" )
           @story = Story.find_by_legacy_filename("gpe/tir-" + params[:story] + ".html" )

           if @story.category_id == 10 # make sure it is a tyres story
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
