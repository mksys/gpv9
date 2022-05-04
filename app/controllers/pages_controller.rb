class PagesController < ApplicationController



  def index
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

    def encyclopedia
      @site_section = "Encyclopedia"
      @site_section_number = 8
      @site_title = "Grandprix.com - Encyclopedia"
      
    end
    
    def privacy
      @site_section = "Privacy"
      @site_section_number = 1
      @site_title = "Grandprix.com - Privacy" 
    end
    def terms
      @site_section = "Terms of Use"
      @site_section_number = 1
      @site_title = "Grandprix.com - Terms of Use"
    end
    def copyright
      @site_section = "Copyright"
      @site_section_number = 1
      @site_title = "Grandprix.com - Copyright Policy"
    end

end
