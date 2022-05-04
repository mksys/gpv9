class HomeController < ApplicationController

  def index    
    @site_section = "Home"
    @site_title = "Latest Formula 1 Breaking News - Grandprix.com"
    @site_section_number = 1
    @stories = Story.live_date.published.home_page_order.news_and_race_category.limit(24) 
    # @stories = Story.live_date.published.home_page_order.news_category.limit(200) 
     @features = Story.live_date.published.home_page_order.features_and_columns_category.limit(10) 
    # get day of the month
    @dayofmonth = Time.now.day
    #Time.now.strftime("%d") - 28.days
  end

#  layout "huski.html.erb"
  def huski    
    @site_section = "Home"
    @site_title = "Latest Formula 1 Breaking News - Grandprix.com"
    @site_section_number = 1
    @stories = Story.live_date.published.home_page_order.news_and_race_category.limit(25) 
    # @stories = Story.live_date.published.home_page_order.news_category.limit(200) 
     @features = Story.live_date.published.home_page_order.features_and_columns_category.limit(10) 
  end

   def carrera    
    @site_section = "Home"
    @site_title = "Latest Formula 1 Breaking News - Grandprix.com"
    @site_section_number = 1
    @stories = Story.live_date.published.home_page_order.news_and_race_category.limit(25) 
    # @stories = Story.live_date.published.home_page_order.news_category.limit(200) 
     @features = Story.live_date.published.home_page_order.features_and_columns_category.limit(10) 
  end

   def estrellagalicia    
    @site_section = "Home"
    @site_title = "Latest Formula 1 Breaking News - Grandprix.com"
    @site_section_number = 1
    @stories = Story.live_date.published.home_page_order.news_and_race_category.limit(25) 
    # @stories = Story.live_date.published.home_page_order.news_category.limit(200) 
     @features = Story.live_date.published.home_page_order.features_and_columns_category.limit(10) 
  end

end
