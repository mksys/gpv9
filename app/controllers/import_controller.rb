class ImportController < ApplicationController
  before_action :authenticate_user!
    
  
  def index
    
  end

  def do_categories
    convert_old_publish_areas_to_categories
    race_info
  end

  def convert_bad
    
    @stories = LegacyStory.where(['StoryId = ?', 1])
    convert_old_stories_to_new_bad
    @stories = LegacyStory.where(['StoryId = ?', 2])
    convert_old_stories_to_new_bad
     @stories = LegacyStory.where(['StoryId = ?', 24031])
      convert_old_stories_to_new_bad
      @stories = LegacyStory.where(['StoryId = ?', 24282])
       convert_old_stories_to_new_bad
      @stories = LegacyStory.where(['StoryId = ?', 28178])
      convert_old_stories_to_new_bad
      @stories = LegacyStory.where(['StoryId = ?', 28398])
      convert_old_stories_to_new_bad
      @stories = LegacyStory.where(['StoryId = ?', 29163])
      convert_old_stories_to_new_bad
      @stories = LegacyStory.where(['StoryId = ?', 32454])
      convert_old_stories_to_new_bad
      @stories = LegacyStory.where(['StoryId = ?', 32464])
      convert_old_stories_to_new_bad

    
  end

  def convert
      do_categories
      y = 0
      #  @number_of_stories  =  LegacyStory.where(['PublishAreaNumber = ?', "100000000000000"]).count
      # @total_stories =  LegacyStory.all.count
      
      
      # @stories = LegacyStory.where(['PublishAreaNumber = ?', "010000000000000"]).order(:id) #2
      # puts "=========> Story count = #{@stories.count}"
      #  
      # convert_old_stories_to_new
      # 
      # @stories = LegacyStory.where(['PublishAreaNumber = ?', "001000000000000"]).order(:id) #3
      # puts "=========> Story count = #{@stories.count}"
      # convert_old_stories_to_new
      # 
      # @stories = LegacyStory.where(['PublishAreaNumber = ?', "000100000000000"]).order(:id) #4
      # puts "=========> Story count = #{@stories.count}"
      # convert_old_stories_to_new
      # 
      # @stories = LegacyStory.where(['PublishAreaNumber = ?', "000010000000000"]).order(:id) #5
      # puts "=========> Story count = #{@stories.count}"
      # convert_old_stories_to_new
      # 
      # @stories = LegacyStory.where(['PublishAreaNumber = ?', "000001000000000"]).order(:id) #6
      # puts "=========> Story count = #{@stories.count}"
      # convert_old_stories_to_new
      # 
      # @stories = LegacyStory.where(['PublishAreaNumber = ?', "000000100000000"]).order(:id) #7
      # puts "=========> Story count = #{@stories.count}"
      # convert_old_stories_to_new
      # 
      # @stories = LegacyStory.where(['PublishAreaNumber = ?', "000000010000000"]).order(:id) #8
      # puts "=========> Story count = #{@stories.count}"
      # convert_old_stories_to_new
      #       
      # @stories = LegacyStory.where(['PublishAreaNumber = ?', "000000001000000"]).order(:id) #9
      # puts "=========> Story count = #{@stories.count}"
      # @stories.each do |story|
      #     y = y + 1
      #     puts "#{y}. #{story.StoryID}, Headline: #{story.Headline}"
      # end
      # convert_old_stories_to_new
      # 
      # @stories = LegacyStory.where(['PublishAreaNumber = ?', "000000000100000"]).order(:id) #10
      #  puts "=========> Story count = #{@stories.count}"
      #  convert_old_stories_to_new
      #  
      #  @stories = LegacyStory.where(['PublishAreaNumber = ?', "000000000010000"]).order(:id) #11
      #  puts "=========> Story count = #{@stories.count}"
      #  convert_old_stories_to_new
      #  
      #  @stories = LegacyStory.where(['PublishAreaNumber = ?', "100000000000000"]).order(:id) #1
      #  puts "=========> Story count = #{@stories.count}"
      #  convert_old_stories_to_new
      #        
 
      # puts "@category_temp_st_prefix1[1] - #{@category_temp_st_prefix1[1]}"
 
 
      # @stories = LegacyStory.where(['StoryId > ?', 24000])


      @stories = LegacyStory.all.order(:id)
      # @category = all
 
      convert_old_stories_to_new
     
 
      y = 0
      # @stories.each do |story|
      #    y = y + 1
      #    puts "#{y}. Processing story: #{story.StoryID}, Headline: #{story.Headline}"
      #    
      #  end
       

 
end


def convert_old_stories_to_new_bad
    @stories.each do |story|
      puts "story.StoryID = #{story.StoryID}"
      puts "story.Headline = #{story.Headline}"
      puts "story.PublishAreaNumber = #{story.PublishAreaNumber}"
      puts "story.AuthorCode = #{story.AuthorCode}, story.DateLive.year = #{story.DateLive.year}"
      puts "story.DateLive = #{story.DateLive}"
      puts "story.DateLive.year = #{story.DateLive.year}"
   end
  
end


def convert_old_stories_to_new
  # Story.errors.full_messages
  output = File.open( "redirect.txt","w" )
  
  
  count = 0
  @stories.each do |story|
    save_worked = false
    story_is_a_race = false
    if story.id != 24031 && story.id != 24282 && story.id != 28178 && story.id != 28398 && story.id != 29163 && story.id != 32454 && story.id != 32464
    Story.transaction do
      puts "Start Loop-----[##{story.id} - #{story.Headline}]---------------------------------------"
    count = count + 1
    a_story = Story.new
    a_story.category_id = 0
     # get category
      if story.PublishAreaNumber == "100000000000000"
          a_story.category_id = 1
      elsif story.PublishAreaNumber == "010000000000000"
          a_story.category_id = 2
      elsif story.PublishAreaNumber == "001000000000000" # GPE Drivers
          a_story.category_id = 3
      elsif story.PublishAreaNumber == "000100000000000" # GPE People
          a_story.category_id = 4
      elsif story.PublishAreaNumber == "000010000000000" # GPE Constructors
          a_story.category_id = 5
       elsif story.PublishAreaNumber == "000001000000000" # GPE Circuits
          a_story.category_id = 6
       elsif story.PublishAreaNumber == "000000100000000" # GPE Sponsors
          a_story.category_id = 7
      elsif story.PublishAreaNumber == "000000010000000" # GPE Engines
          a_story.category_id = 8
      elsif story.PublishAreaNumber == "000000001000000" # GPE Fuel
          a_story.category_id = 9
     elsif story.PublishAreaNumber == "000000000100000" # GPE Tyres
           a_story.category_id = 10
      elsif story.PublishAreaNumber == "000000000010000" # GPE Races
          a_story.category_id = 11
      end
      puts "story.PublishAreaNumber = #{story.PublishAreaNumber}, a_story.category_id = #{a_story.category_id}"
      

      template_reference = a_story.category_id - 1
      template = story.StoryTemplateNumber[template_reference..template_reference].to_i     
      a_story.template_id = 17
      #Category and template
     if a_story.category_id == 1 && template == 1
         a_story.category_id = 1
         a_story.template_id = 1
     elsif a_story.category_id == 1 && template >= 2 #race
          a_story.category_id = 1
         a_story.template_id = 2
     elsif a_story.category_id == 2 && (template == 1 || template == 2 || template == 6 || template == 7) # feature
         a_story.category_id = 2
         a_story.template_id = 3
     elsif a_story.category_id == 2 && template == 3 # globetrotter
          a_story.category_id = 12
         a_story.template_id = 4
      elsif a_story.category_id == 2 && template == 4 # Eff One
         a_story.category_id = 12
         a_story.template_id = 5
      elsif a_story.category_id == 2 && template == 5 # Mole
         a_story.category_id = 12
         a_story.template_id = 6
     elsif a_story.category_id == 2 && template == 8 # Mo's column
          a_story.category_id = 12
         a_story.template_id = 7
     elsif a_story.category_id == 3 # GPE Drivers
         a_story.category_id = 3
         a_story.template_id = 8
     elsif a_story.category_id == 4 # GPE People
         a_story.category_id = 4
         a_story.template_id = 9
     elsif a_story.category_id == 5 # GPE Constructors
         a_story.category_id = 5
         a_story.template_id = 10
      elsif a_story.category_id == 6 # GPE Circuits
         a_story.category_id = 6
         a_story.template_id = 11
      elsif a_story.category_id == 7 # GPE Sponsors
         a_story.category_id = 7
         a_story.template_id = 12
     elsif a_story.category_id == 8 # GPE Engines
         a_story.category_id = 8
         a_story.template_id = 13
     elsif a_story.category_id == 9 # GPE Fuel
         a_story.category_id = 9
         a_story.template_id = 14
    elsif a_story.category_id == 10 # GPE Tyres
          a_story.category_id = 10
         a_story.template_id = 15
     elsif a_story.category_id == 11 # GPE Races
         story_is_a_race = true
         a_story.category_id = 11
         a_story.template_id = 16
     end
     puts "!!a_story.category_id = #{a_story.category_id}"
     puts "**a_story.template_id = #{a_story.template_id}"

     # Headline
     a_story.headline = story.Headline

     #id
     a_story.storyid = story.id

     # Author
     a_story.author = "No Author"
     if story.AuthorCode && story.DateLive.year
       if story.AuthorCode == "JS" && story.DateLive.year >= 2010
         a_story.author = "No Author"
       elsif story.AuthorCode == "JS"
         a_story.author = "Joe Saward"
       elsif story.AuthorCode == "MK"
         a_story.author = "Mark Karp"
       elsif story.AuthorCode == "JM" && story.DateLive.year >= 2010
         a_story.author = "GMM"
       elsif story.AuthorCode == "JM"
         a_story.author = "James McLaughlin"
       elsif story.AuthorCode == "NG" && story.DateLive.year >= 2010
         a_story.author = "No Author"
       elsif story.AuthorCode == "DT" && story.DateLive.year >= 2012
         a_story.author = "Dan Knutson"
       elsif story.AuthorCode == "DT" && story.DateLive.year >= 2010
         a_story.author = "Tony Dodgins"
       elsif story.AuthorCode == "DT" && story.DateLive.year <= 2009
         a_story.author = "David Tremayne"
       elsif story.AuthorCode == "MT" && story.DateLive.year >= 2010
         a_story.author = "Maurice Hamilton"
       elsif story.AuthorCode == "MT" && story.DateLive.year <= 2009
         a_story.author = "Michael Tadema-Wielandt"
       elsif story.AuthorCode == "NL"
         a_story.author = "Nick Longhi"
       elsif story.AuthorCode == "AH"
         a_story.author = "Alan Henry"
       elsif story.AuthorCode == "PW"
         a_story.author = "Peter Wright"
       elsif story.AuthorCode == "NG"
         a_story.author = "Nick Garton"
       else
         puts "AuthorCode not computed: StoryID: #{story.StoryID}, AuthorCode: #{story.AuthorCode}, "
       end
     end
     # If the author is set in Field1, then make that the author
     if a_story.category_id == 2 && story.Field1 != ""
       if story.Field1 == a_story.author
         # do nothing
       else
         a_story.author = story.Field1
       end
       if a_story.author == "Robert Sinfield"
         a_story.author = "Rob Sinfield"
       end
     end
     puts "a_story.category_id = #{a_story.category_id}, story.AuthorCode = #{story.AuthorCode}, a_story.author = #{a_story.author}, story.DateLive.year = #{story.DateLive.year}"

     a_story.show_author = false # set default - set to true in templates if needs to be shown


     a_story.revision = story.RevisionNumber
     a_story.created_at = story.DateCreation
     a_story.updated_at = story.DateModified
     a_story.date_live_at = story.DateLive
     a_story.date_live_on = story.DateLiveDate
     if story_is_a_race
       puts "story.Date1 = #{story.Date1}"
       this_date_live_on = story.Date1
       puts "this_date_live_on = #{this_date_live_on}"
       # 19500513
       this_date_live_on2 = "#{this_date_live_on[0,4]}-#{this_date_live_on[4,2]}-#{this_date_live_on[6, 2]}"
       thisyear = "#{this_date_live_on[0,4]}"
       puts "thisyear = #{thisyear}"
       thismonth = "#{this_date_live_on[4,2]}"
       puts "thismonth = #{thismonth}"
       thisdate = "#{this_date_live_on[6, 2]}"
       puts "thisdate = #{thisdate}"
       puts "this_date_live_on2 = #{this_date_live_on2}"
       a_story.date_live_on = this_date_live_on2
       puts "a_story.date_live_on = #{a_story.date_live_on}"
       # a_story.date_live_at = DateTime.parse(this_date_live_on2).to_time.to_i
       # a_story.date_live_at = Date.this_date_live_on2.to_time.to_i
       # this_date_live_on3 = "#{thismonth}/#{thisdate}/#{thisyear} 0:00:0"
       # a_story.date_live_at = DateTime.strptime(this_date_live_on3, '%d/%m/%Y %H:%M:%S')
       this_date_live_on3 = DateTime.parse this_date_live_on2
       puts "this_date_live_on3 = #{this_date_live_on3}"
       a_story.date_live_at = this_date_live_on3
       # parsed_time = DateTime.strptime('03/05/2010 14:25:00', '%d/%m/%Y %H:%M:%S')
       
       puts "a_story.date_live_at = #{a_story.date_live_at}"
     end
     a_story.priority = story.Priority
     a_story.publish = story.isPublishable
     a_story.analysis = story.isNewsAnalysis

     # if GPE Race then set race_detail_id
     if story_is_a_race
       a_story.race_detail_id = story.Number1.to_i
     end
     # if Race story, then set race_detail_id
     if a_story.category_id == 1 && template > 1
       a_story.race_detail_id = story.Number1.to_i
     end


     # Set legacy file name
     if template == 1
       template_path = @category_temp_st_path1[a_story.category_id]
       template_prefix = @category_temp_st_prefix1[a_story.category_id]
     elsif template == 2
       template_path = @category_temp_st_path2[a_story.category_id]
       template_prefix = @category_temp_st_prefix2[a_story.category_id]
     elsif template == 3
       template_path = @category_temp_st_path3[a_story.category_id]
       template_prefix = @category_temp_st_prefix3[a_story.category_id]
     elsif template == 4
       template_path = @category_temp_st_path4[a_story.category_id]
       template_prefix = @category_temp_st_prefix4[a_story.category_id]
     elsif template == 5
       template_path = @category_temp_st_path5[a_story.category_id]
       template_prefix = @category_temp_st_prefix5[a_story.category_id]
     elsif template == 6
       template_path = @category_temp_st_path6[a_story.category_id]
       template_prefix = @category_temp_st_prefix6[a_story.category_id]
     elsif template == 7
       template_path = @category_temp_st_path7[a_story.category_id]
       template_prefix = @category_temp_st_prefix7[a_story.category_id]
     elsif template == 8
       template_path = @category_temp_st_path8[a_story.category_id]
       template_prefix = @category_temp_st_prefix8[a_story.category_id]
     elsif template == 9
       template_path = @category_temp_st_path9[a_story.category_id]
       template_prefix = @category_temp_st_prefix9[a_story.category_id]
     else
       template_path = @category_temp_st_path1[a_story.category_id]
       template_prefix = @category_temp_st_prefix1[a_story.category_id]
     end
     puts "@category_temp_st_path1[a_story.category_id] = #{@category_temp_st_path1[a_story.category_id]}, @category_temp_st_prefix1[a_story.category_id] = #{@category_temp_st_prefix1[a_story.category_id]}"

     a_story.legacy_filename = ""
     # add legacy stuff to legacy_filename
     if a_story.category_id == 1
       # a_story.legacy_filename = "ns/"
       a_story.legacy_filename = ""
     elsif a_story.category_id == 2 && (template == 1 || template == 2 || template == 6 || template == 7) # feature
         @template_id = 3
         a_story.legacy_filename = "ft/"            
     elsif a_story.category_id == 12 && template == 3 # globetrotter
       a_story.legacy_filename = "gt/"            
     elsif a_story.category_id == 12 && template == 4 # Eff One
       a_story.legacy_filename = "ft/"            
     elsif a_story.category_id == 12 && template == 5 # Mole
       a_story.legacy_filename = "mole/"            
     elsif a_story.category_id == 12 && template == 8 # Mo's column
       a_story.legacy_filename = "maurice-hamilton/"            
     elsif a_story.category_id == 3
       a_story.legacy_filename = "gpe/"
     elsif a_story.category_id == 4
       a_story.legacy_filename = "gpe/"
     elsif a_story.category_id == 5
       a_story.legacy_filename = "gpe/"
     elsif a_story.category_id == 6
       a_story.legacy_filename = "gpe/"
     elsif a_story.category_id == 7
       a_story.legacy_filename = "gpe/"
     elsif a_story.category_id == 8
       a_story.legacy_filename = "gpe/"
     elsif a_story.category_id == 9
       a_story.legacy_filename = "gpe/"
     elsif a_story.category_id == 10
       a_story.legacy_filename = "gpe/"
     elsif a_story.category_id == 11
       a_story.legacy_filename = "gpe/"
     end
     if story_is_a_race
       a_story.legacy_filename = "gpe/"
     end
     puts "a_story.legacy_filename = #{a_story.legacy_filename}"

     if story.isFilenameAlt == "1"
       a_story.legacy_filename = a_story.legacy_filename + story.FilenameAlt + ".html"          
     else
       a_story.legacy_filename = a_story.legacy_filename + story.Filename
     end



     # filename
     # put together filename string, then process it
     # news
     if a_story.category_id == 1 && template == 1
       filename_temp = "/news/"
     # races
     elsif a_story.category_id == 1 && template >= 2
       filename_temp = "/races/"
     # features
     elsif a_story.category_id == 2 && (template == 1 || template == 7)
       filename_temp = "/features/"
       a_story.show_author = true
       # put the right path on writers for template 1
       if a_story.author == "David Tremayne"
         filename_temp = "/features/david-tremayne/"
         a_story.show_author = true
       elsif a_story.author == "Alan Henry" && story.Field2 == "Big Al"
         filename_temp = "/columns/alan-henry/"
         a_story.show_author = true
       elsif a_story.author == "Alan Henry"
         filename_temp = "/features/alan-henry/"
         a_story.show_author = true
       elsif a_story.author == "Tony Dodgins"
         filename_temp = "/features/tony-dodgins/"
         a_story.show_author = true
       elsif a_story.author == "Peter Wright"
         filename_temp = "/features/peter-wright/"
         a_story.show_author = true
       elsif a_story.author == "Nick Garton" && story.Field2 == "The Youth of Today"
         filename_temp = "/columns/nick-garton/"
       elsif a_story.author == "Nick Garton"
         filename_temp = "/features/nick-garton/"
         a_story.show_author = true
       elsif a_story.author == "Joe Saward"
         filename_temp = "/features/joe-saward/"
         a_story.show_author = true
       elsif a_story.author == "Clyde Brolin"
         filename_temp = "/columns/mind-games/"
         a_story.show_author = true
       elsif a_story.author == "Rob Sinfield"
         filename_temp = "/columns/the-man-in-the-pub/"
         a_story.show_author = true
       elsif a_story.author == "Will Buxton"
         filename_temp = "/features/will-buxton/"
         a_story.show_author = true
       elsif a_story.author == "Mike Doodson" && story.Field2.downcase == "a hack looks back"
         filename_temp = "/columns/mike-doodson/"
         a_story.show_author = true
       elsif a_story.author == "Mike Doodson" && story.Field2.downcase == "the hack looks back"
         filename_temp = "/columns/mike-doodson/"
         a_story.show_author = true
       elsif a_story.author == "Mark Karp" && story.Field2 == "Mind Games"
         filename_temp = "/columns/mind-games/"
         a_story.author = "Clyde Brolin"
         a_story.show_author = true
       elsif a_story.author == "Mark Karp" && story.Field2 == "Eff One"
         filename_temp = "/columns/eff-one/"
         a_story.author = "Eff One"
         template = 4
       elsif a_story.author == "Mark Karp"
         filename_temp = "/features/mark-karp/"
         a_story.show_author = true
       end
     elsif a_story.category_id == 2 && template == 2
       filename_temp = "/features/"
     elsif a_story.category_id == 12 && template == 3
       filename_temp = "/columns/globetrotter/"
       a_story.show_author = true
     elsif a_story.category_id == 12 && template == 4
       filename_temp = "/columns/eff-one/"
       a_story.author = "Eff One"
     elsif a_story.category_id == 12 && template == 5
       filename_temp = "/columns/the-mole/"
     elsif a_story.category_id == 12 && template == 6
       filename_temp = "/columns/mike-doodson/"
       a_story.author = "Mike Doodson"
       a_story.show_author = true
     elsif a_story.category_id == 12 && template == 8
       filename_temp = "/columns/maurice-hamilton/"
       a_story.show_author = true
     # GPE
     elsif a_story.category_id == 3
       filename_temp = "/drivers/"
     elsif a_story.category_id == 4
       filename_temp = "/people/"
     elsif a_story.category_id == 5
       filename_temp = "/constructors/"
     elsif a_story.category_id == 6
       filename_temp = "/circuits/"
     elsif a_story.category_id == 7
       filename_temp = "/sponsors/"
     elsif a_story.category_id == 8
       filename_temp = "/engines/"
     elsif a_story.category_id == 9
       filename_temp = "/fuel/"
     elsif a_story.category_id == 10
       filename_temp = "/tyres/"
     elsif a_story.category_id == 11
       filename_temp = "/races/"
     else
       filename_temp = "/pages/"
     end
     
     if story_is_a_race
       filename_temp = "/races/"
     end
     puts "filename_temp = #{filename_temp}"
     
     @sort_name = ""
     # process the string and make sure it is not duplicated - set the name_slug       
     y = 2
     name = story.Headline
     if a_story.category_id == 2 && story.Field2 != "" && (template == 1 || template == 2)
       # set Feature type on a regular feature (if it has a type in Field2)
       name = story.Field2 + "-" + story.Headline
       if story.Field2.downcase == "a hack looks back"
         name = "The hack looks back" + "-" + story.Headline
        end
     end
     # Set the sort_name field if it is a driver or person
     if a_story.category_id == 3 || a_story.category_id == 4
       @sort_name = story.Field2 + " " + story.Field1
     end
     a_story.sort_name = @sort_name

     # races
     if a_story.category_id == 1 && template >= 2
       current_race_detail = RaceDetail.find_by_number(story.Number1.to_i)
       name = current_race_detail.race_name_gp + "-gp-" + 
               current_race_detail.year.to_s + "-" + story.Headline
     end
     if name == ""
       name = "story" + story.StoryID.to_s
     end
     proposed_name_slug = name.
     gsub("&", "and").
     gsub(".", "-").    
      # gsub(/[\x80-\xff]/,"").
     gsub(/[^\w\s\-\+\.]/n, "").
     strip.
     gsub(/\s+/, "-").
     gsub(".", "-").
     gsub("-----", "-").
     gsub("----", "-").
     gsub("---", "-").
     gsub("--", "-").
     gsub(/\-$/, "").
     gsub(/^-/, "").
     downcase
     proposed_name_slug = create_permalink(proposed_name_slug)
     # first check if there is another page with the same slug name, and if so
     # loop until a new unique name is found
     if Story.find_by_name_slug(proposed_name_slug)
       test_slug_name = proposed_name_slug + "-#{y}"
       until !Story.find_by_name_slug(test_slug_name)
         y = y + 1
         test_slug_name = proposed_name_slug + "-#{y}"
       end
       slug_name = proposed_name_slug + "-#{y}"
     else
       slug_name = proposed_name_slug
     end
     puts "slug_name: " + slug_name
     a_story.name_slug = slug_name

     # then assign it in the database
     a_story.filename = filename_temp + slug_name + ".html"
     puts "filename_temp = #{filename_temp}"
     
     # exception: if it is a Mo column, keep it the same as the alt name,
     #            to make things easier, to keep the same path name.
     if a_story.category_id == 2 && template == 8          
       a_story.filename = filename_temp + story.FilenameAlt + ".html"               
       a_story.name_slug = story.FilenameAlt
     end


     a_story.headline = story.Headline
     a_story.abstract = story.Abstract

     a_story.body = story.Body
     a_story.body_html = story.LongField1

     # Extra field conversion

     # category 1 (for race info) - Field1 - Race Name (as is Brazilian),
     #                               Field2 - Race Session (thupr),
     #                               Field3 - This is a race (gp07),
     #                               Number1 - Race Number (805)

     # category 2 -  Field1 - Author, 
     #               Field2 Feature Type

     feature_type = ""
     if a_story.category_id == 2 && story.Field2 != ""
       feature_type = story.Field2
       if story.Field2.downcase == "the hack looks back"
         feature_type = "The hack looks back"
       end
       if story.Field2.downcase == "a hack looks back"
         feature_type = "The hack looks back"
       end
     end
     a_story.feature_type = feature_type


     # Drivers, People
     # categories 3 & 4 -  Date1 - Date of Birth, 
     #                     Date2 - Date of Death,
     #                     Field1 - First Name, 
     #                     Field2 - Last Name,
     #                     Field3 - Nationality, 
     #                     Field4 - Nat (abbr),
     #                     Field5 - Birth Location, 
     #                     Field6 - Death Location,
     #                     Field7 - Extra info
     #                     Number1 - is DOB true?, 
     #                     Number2 - is DOD true?

     # category 11 - Date1 - Race Date (missing from a bunch - in the form 19500513), 
     #               Date2 - Year (as in 19500101) - don't need, use Number4
     #               Field1 - Race (as in Australia), 
     #               Field2 - Circuit (link and name - ie - <a href=\"cir-007.html\">Sepang</a> )
     #               Field3 - Race GP (as in Australian), 
     #               Field4 - Next Race Link (rr652), 
     #               Field5 - Prev Race Link (rr650)
     #               Field6 - Circuit Length (missing a few), 
     #               Field7 - Extra info (not used)
     #               LongField1 - Results, 
     #               LongField2 - Extra tables (not used)
     #               Number1 - Race Number, 
     #               Number2 - Round, 
     #               Number3 - Total laps
     #               Number4 - Year (missing from a bunch - need 1951-2000)
     #               


    puts "#{count}."
    puts " :storyid - #{a_story.storyid}"
    puts "#{a_story.category_id}, #{a_story.template_id} - #{story.id}: #{a_story.headline}"
    puts " :race_detail_id - #{a_story.race_detail_id}"
    puts " :headline - #{a_story.headline}"
    puts " :sort_name - #{a_story.sort_name}"
    puts " :abstract - #{a_story.abstract}"
    puts " body - #{a_story.body}"
    puts " :body_html - #{a_story.body_html}"

    puts " :filename - #{a_story.filename}"
    puts " :name_slug - #{a_story.name_slug}"
    puts " :legacy_filename - #{a_story.legacy_filename}"
    puts " :author - #{a_story.author}"
    puts " :feature_type - #{a_story.feature_type}"
    puts " :revision - #{a_story.revision}"
    puts " :priority - #{a_story.priority}"
    puts " :publish - #{a_story.publish}"
    puts " :analysis - #{a_story.analysis}"
    puts " :show_author - #{a_story.show_author}"
    
    puts " :date_live_at - #{a_story.date_live_at}"
    puts " :date_live_on - #{a_story.date_live_on}"
    output << "#{a_story.date_live_on} #{a_story.storyid} - #{a_story.headline}\n"
    # file names for redirect
    output << "   #{a_story.legacy_filename}\n"
    output << "   #{a_story.filename}\n"
    
    # puts " t.timestamps - #{a_story.timestamps}"
     # sleep(1)
    # sleep(1.0/24.0)
    puts "#{count}, ##{a_story.storyid}--------------------------------------------save_worked = #{save_worked}"
    # sleep(0.1)
    # a_story.convert!
    if a_story.save
      puts "save worked"
      save_worked = true
    else
      puts "save failed!"
    end
    # a_story.valid?
    # a_story.errors.full_messages
     puts "End Loop--------------------------------------------"

     # save legacy_photo info
     puts "save legacy_photo info--------------------------------------------"

     if story.isPictActive == "1"
       a_photo = LegacyPhoto.new

       a_photo.has_photo = true
       a_photo.has_thumbnail = story.isPictThumbnailActive
       # a_photo.display_photo = "/orig/" + story.PictName
       a_photo.display_photo = story.PictName
       unless story.PictLink.nil?
         # a_photo.link_photo = "/orig/" + story.PictLink
         a_photo.link_photo = story.PictLink
        else 
           puts "error on: #{story.id}"
       end
       unless story.PictThumbnail.nil?
         # a_photo.thumbnail_photo = "/orig/" << story.PictThumbnail
         a_photo.thumbnail_photo = "" << story.PictThumbnail
       else 
          puts "error on: #{story.id}"
       end
       a_photo.display_photo_height = story.PictHeight
       a_photo.display_photo_width = story.PictWidth
       a_photo.thumbnail_photo_height = story.PictHeightTN
       a_photo.thumbnail_photo_width = story.PictWidthTN
       a_photo.caption = story.PictCaption
       a_photo.copyright = story.PictCopyright
 #      a_photo.copyright = story.PictCopyright.gsub("Â", "")
       a_photo.story_id = a_story.id
       a_photo.save
       puts "a_photo.display_photo = #{a_photo.display_photo}"

     end


  end #Transaction
end

  end
  output.close

end




def get_categories
  
end






 































    def race_info
       # 000000000010000

       @stories = LegacyStory.where(['PublishAreaNumber = ?', "000000000010000"]).order("Number1")
       @category = 11
       puts "#@stories.count : #{@stories.count}"

       if RaceDetail.count <= 1
         y = 1
         @stories.each do |story|
           puts "Race Number: #{story.Number1}"
           a_race_detail = RaceDetail.new
           a_race_detail.number = story.Number1
           a_race_detail.race_date_on = story.Date1
           a_race_detail.round = story.Number2
           a_race_detail.total_laps = story.Number3
           a_race_detail.year = story.Date1[0..3]
           a_race_detail.race_name = story.Field1
           a_race_detail.race_name_gp = story.Field3
           a_race_detail.circuit = story.Field2
           a_race_detail.circuit_length = story.Field6.to_f

           y = y + 1
           a_race_detail.save
         end



       # Add 2011 races
       # a_race_detail = RaceDetail.create(:number => 840,
       #                                   :round => 1,
       #                                   :total_laps => 58,
       #                                   :circuit_length => 5.303,
       #                                   :race_date_on => "2011-03-27",
       #                                   :race_name => "Australia",
       #                                   :race_name_gp => "Australian",
       #                                   :circuit => "Albert Park",
       #                                   :year => 2011
       # )
       # a_race_detail = RaceDetail.create(:number => 841,
       #                                   :round => 2,
       #                                   :total_laps => 56,
       #                                   :circuit_length => 5.543,
       #                                   :race_date_on => "2011-04-10",
       #                                   :race_name => "Malaysia",
       #                                   :race_name_gp => "Malaysian",
       #                                   :circuit => "Sepang",
       #                                   :year => 2011
       # )
       # a_race_detail = RaceDetail.create(:number => 842,
       #                                   :round => 3,
       #                                   :total_laps => 56,
       #                                   :circuit_length => 5.451,
       #                                   :race_date_on => "2011-04-17",
       #                                   :race_name => "China",
       #                                   :race_name_gp => "Chinese",
       #                                   :circuit => "Shanghai International",
       #                                   :year => 2011
       # )
       # a_race_detail = RaceDetail.create(:number => 843,
       #                                   :round => 4,
       #                                   :total_laps => 58,
       #                                   :circuit_length => 5.338,
       #                                   :race_date_on => "2011-05-08",
       #                                   :race_name => "Turkey",
       #                                   :race_name_gp => "Turkish",
       #                                   :circuit => "Istanbul",
       #                                   :year => 2011
       # )
       # a_race_detail = RaceDetail.create(:number => 844,
       #                                   :round => 5,
       #                                   :total_laps => 66,
       #                                   :circuit_length => 4.655,
       #                                   :race_date_on => "2011-05-22",
       #                                   :race_name => "Spain",
       #                                   :race_name_gp => "Spanish",
       #                                   :circuit => "Barcelona (Circuit de Catalunya)",
       #                                   :year => 2011
       # )
       # a_race_detail = RaceDetail.create(:number => 845,
       #                                   :round => 6,
       #                                   :total_laps => 78,
       #                                   :circuit_length => 3.340,
       #                                   :race_date_on => "2011-05-29",
       #                                   :race_name => "Monaco",
       #                                   :race_name_gp => "Monaco",
       #                                   :circuit => "Monaco",
       #                                   :year => 2011
       # )
       # a_race_detail = RaceDetail.create(:number => 846,
       #                                   :round => 7,
       #                                   :total_laps => 70,
       #                                   :circuit_length => 4.361,
       #                                   :race_date_on => "2011-06-12",
       #                                   :race_name => "Canada",
       #                                   :race_name_gp => "Canadian",
       #                                   :circuit => "Montreal",
       #                                   :year => 2011
       # )
       # a_race_detail = RaceDetail.create(:number => 847,
       #                                     :round => 8,
       #                                      :total_laps => 57,
       #                                     :circuit_length => 5.419,
       #                                     :race_date_on => "2011-06-26",
       #                                     :race_name => "Europe",
       #                                     :race_name_gp => "European",
       #                                     :circuit => "Valencia",
       #                                     :year => 2011
       #   )
         # a_race_detail = RaceDetail.create(:number => 848,
         #                                     :round => 9,
         #                                     :total_laps => 60,
         #                                     :circuit_length => 5.141,
         #                                     :race_date_on => "2011-07-10",
         #                                     :race_name => "Britain",
         #                                     :race_name_gp => "British",
         #                                     :circuit => "Silverstone",
         #                                     :year => 2011
           # )
       a_race_detail = RaceDetail.create(:number => 849,
                                         :round => 10,
                                         :total_laps => 67,
                                         :circuit_length => 4.574,
                                         :race_date_on => "2011-07-24",
                                         :race_name => "Germany",
                                         :race_name_gp => "German",
                                         :circuit => "Hockenheim",
                                         :year => 2011
       )
       a_race_detail = RaceDetail.create(:number => 850,
                                         :round => 11,
                                         :total_laps => 70,
                                         :circuit_length => 4.381,
                                         :race_date_on => "2011-07-31",
                                         :race_name => "Hungary",
                                         :race_name_gp => "Hungarian",
                                         :circuit => "Hungaroring",
                                         :year => 2011
       )
       a_race_detail = RaceDetail.create(:number => 851,
                                         :round => 12,
                                         :total_laps => 44,
                                         :circuit_length => 7.004,
                                         :race_date_on => "2011-08-28",
                                         :race_name => "Belgium",
                                         :race_name_gp => "Belgian",
                                         :circuit => "Spa-Francorchamps",
                                         :year => 2011
       )
       a_race_detail = RaceDetail.create(:number => 852,
                                         :round => 13,
                                         :total_laps => 53,
                                         :circuit_length => 5.793,
                                         :race_date_on => "2011-09-11",
                                         :race_name => "Italy",
                                         :race_name_gp => "Italian",
                                         :circuit => "Monza",
                                         :year => 2011
       )
       a_race_detail = RaceDetail.create(:number => 853,
                                         :round => 14,
                                         :total_laps => 61,
                                         :circuit_length => 5.073,
                                         :race_date_on => "2011-09-25",
                                         :race_name => "Singapore",
                                         :race_name_gp => "Singapore",
                                         :circuit => "Singapore",
                                         :year => 2011
       )
       a_race_detail = RaceDetail.create(:number => 854,
                                         :round => 15,
                                         :total_laps => 53,
                                         :circuit_length => 5.807,
                                         :race_date_on => "2011-10-09",
                                         :race_name => "Japan",
                                         :race_name_gp => "Japanese",
                                         :circuit => "Suzuka",
                                         :year => 2011
       )
       a_race_detail = RaceDetail.create(:number => 855,
                                         :round => 16,
                                         :total_laps => 55,
                                         :circuit_length => 5.621,
                                         :race_date_on => "2011-10-16",
                                         :race_name => "Korea",
                                         :race_name_gp => "Korean",
                                         :circuit => "Yeongam",
                                         :year => 2011
       )
       a_race_detail = RaceDetail.create(:number => 856,
                                         :round => 17,
                                         :total_laps => 60,
                                         :circuit_length => 5.137,
                                         :race_date_on => "2011-10-30",
                                         :race_name => "India",
                                         :race_name_gp => "Indian",
                                         :circuit => "New Delhi",
                                         :year => 2011
       )
       a_race_detail = RaceDetail.create(:number => 857,
                                         :round => 18,
                                         :total_laps => 55,
                                         :circuit_length => 5.554,
                                         :race_date_on => "2011-11-13",
                                         :race_name => "Abu Dhabi",
                                         :race_name_gp => "Abu Dhabi",
                                         :circuit => "Yas Marina",
                                         :year => 2011
       )
       a_race_detail = RaceDetail.create(:number => 858,
                                         :round => 19,
                                         :total_laps => 71,
                                         :circuit_length => 4.309,
                                         :race_date_on => "2011-11-27",
                                         :race_name => "Brazil",
                                         :race_name_gp => "Brazilian",
                                         :circuit => "Interlagos",
                                         :year => 2011
       )




       # Add 2012 races
       a_race_detail = RaceDetail.create(:number => 859,
                                         :round => 1,
                                         :total_laps => 58,
                                         :circuit_length => 5.303,
                                         :race_date_on => "2012-03-18",
                                         :race_name => "Australia",
                                         :race_name_gp => "Australian",
                                         :circuit => "Albert Park",
                                         :year => 2012
       )
       a_race_detail = RaceDetail.create(:number => 860,
                                         :round => 2,
                                         :total_laps => 56,
                                         :circuit_length => 5.543,
                                         :race_date_on => "2012-03-25",
                                         :race_name => "Malaysia",
                                         :race_name_gp => "Malaysian",
                                         :circuit => "Sepang",
                                         :year => 2012
       )
       a_race_detail = RaceDetail.create(:number => 861,
                                         :round => 3,
                                         :total_laps => 56,
                                         :circuit_length => 5.451,
                                         :race_date_on => "2012-04-15",
                                         :race_name => "China",
                                         :race_name_gp => "Chinese",
                                         :circuit => "Shanghai International",
                                         :year => 2012
       )
       a_race_detail = RaceDetail.create(:number => 862,
                                         :round => 4,
                                         :total_laps => 49,
                                         :circuit_length => 6.299,
                                         :race_date_on => "2012-04-27",
                                         :race_name => "Bahrain",
                                         :race_name_gp => "Bahrain",
                                         :circuit => "Sakhir",
                                         :year => 2012
       )
       a_race_detail = RaceDetail.create(:number => 863,
                                         :round => 5,
                                         :total_laps => 66,
                                         :circuit_length => 4.655,
                                         :race_date_on => "2012-05-13",
                                         :race_name => "Spain",
                                         :race_name_gp => "Spanish",
                                         :circuit => "Barcelona (Circuit de Catalunya)",
                                         :year => 2012
       )
       a_race_detail = RaceDetail.create(:number => 864,
                                         :round => 6,
                                         :total_laps => 78,
                                         :circuit_length => 3.340,
                                         :race_date_on => "2012-05-27",
                                         :race_name => "Monaco",
                                         :race_name_gp => "Monaco",
                                         :circuit => "Monaco",
                                         :year => 2012
       )
       a_race_detail = RaceDetail.create(:number => 865,
                                         :round => 7,
                                         :total_laps => 70,
                                         :circuit_length => 4.361,
                                         :race_date_on => "2012-06-10",
                                         :race_name => "Canada",
                                         :race_name_gp => "Canadian",
                                         :circuit => "Montreal",
                                         :year => 2012
       )
       a_race_detail = RaceDetail.create(:number => 866,
                                         :round => 8,
                                         :total_laps => 57,
                                         :circuit_length => 5.419,
                                         :race_date_on => "2012-06-24",
                                         :race_name => "Europe",
                                         :race_name_gp => "European",
                                         :circuit => "Valencia",
                                         :year => 2012
       )
       a_race_detail = RaceDetail.create(:number => 867,
                                         :round => 9,
                                         :total_laps => 60,
                                         :circuit_length => 5.141,
                                         :race_date_on => "2012-07-8",
                                         :race_name => "Britain",
                                         :race_name_gp => "British",
                                         :circuit => "Silverstone",
                                         :year => 2012
       )
       a_race_detail = RaceDetail.create(:number => 868,
                                         :round => 10,
                                         :total_laps => 67,
                                         :circuit_length => 4.574,
                                         :race_date_on => "2012-07-22",
                                         :race_name => "Germany",
                                         :race_name_gp => "German",
                                         :circuit => "Hockenheim",
                                         :year => 2012
       )
       a_race_detail = RaceDetail.create(:number => 869,
                                         :round => 11,
                                         :total_laps => 70,
                                         :circuit_length => 4.381,
                                         :race_date_on => "2012-07-29",
                                         :race_name => "Hungary",
                                         :race_name_gp => "Hungarian",
                                         :circuit => "Hungaroring",
                                         :year => 2012
       )
       a_race_detail = RaceDetail.create(:number => 870,
                                         :round => 12,
                                         :total_laps => 44,
                                         :circuit_length => 7.004,
                                         :race_date_on => "2012-09-02",
                                         :race_name => "Belgium",
                                         :race_name_gp => "Belgian",
                                         :circuit => "Spa-Francorchamps",
                                         :year => 2012
       )
       a_race_detail = RaceDetail.create(:number => 871,
                                         :round => 13,
                                         :total_laps => 53,
                                         :circuit_length => 5.793,
                                         :race_date_on => "2012-09-09",
                                         :race_name => "Italy",
                                         :race_name_gp => "Italian",
                                         :circuit => "Monza",
                                         :year => 2012
       )
       a_race_detail = RaceDetail.create(:number => 872,
                                         :round => 14,
                                         :total_laps => 61,
                                         :circuit_length => 5.073,
                                         :race_date_on => "2012-09-23",
                                         :race_name => "Singapore",
                                         :race_name_gp => "Singapore",
                                         :circuit => "Singapore",
                                         :year => 2012
       )
       a_race_detail = RaceDetail.create(:number => 873,
                                         :round => 15,
                                         :total_laps => 53,
                                         :circuit_length => 5.807,
                                         :race_date_on => "2012-10-07",
                                         :race_name => "Japan",
                                         :race_name_gp => "Japanese",
                                         :circuit => "Suzuka",
                                         :year => 2012
       )
       a_race_detail = RaceDetail.create(:number => 874,
                                         :round => 16,
                                         :total_laps => 55,
                                         :circuit_length => 5.621,
                                         :race_date_on => "2012-10-14",
                                         :race_name => "Korea",
                                         :race_name_gp => "Korean",
                                         :circuit => "Yeongam",
                                         :year => 2012
       )
       a_race_detail = RaceDetail.create(:number => 875,
                                         :round => 17,
                                         :total_laps => 60,
                                         :circuit_length => 5.137,
                                         :race_date_on => "2012-10-28",
                                         :race_name => "India",
                                         :race_name_gp => "Indian",
                                         :circuit => "New Delhi",
                                         :year => 2012
       )
       a_race_detail = RaceDetail.create(:number => 876,
                                         :round => 18,
                                         :total_laps => 55,
                                         :circuit_length => 5.554,
                                         :race_date_on => "2012-11-04",
                                         :race_name => "Abu Dhabi",
                                         :race_name_gp => "Abu Dhabi",
                                         :circuit => "Yas Marina",
                                         :year => 2012
       )
       a_race_detail = RaceDetail.create(:number => 877,
                                         :round => 19,
                                         :total_laps => 56,
                                         :circuit_length => 5.516,
                                         :race_date_on => "2012-11-18",
                                         :race_name => "United States",
                                         :race_name_gp => "United States",
                                         :circuit => "Austin, Texas",
                                         :year => 2012
       )
        a_race_detail = RaceDetail.create(:number => 878,
                                           :round => 20,
                                           :total_laps => 71,
                                           :circuit_length => 4.309,
                                           :race_date_on => "2012-11-25",
                                           :race_name => "Brazil",
                                           :race_name_gp => "Brazilian",
                                           :circuit => "Interlagos",
                                           :year => 2012
         )

         # Add 2013 races
         a_race_detail = RaceDetail.create(:number => 879,
                                           :round => 1,
                                           :total_laps => 58,
                                           :circuit_length => 5.303,
                                           :race_date_on => "2013-03-17",
                                           :race_name => "Australia",
                                           :race_name_gp => "Australian",
                                           :circuit => "Albert Park",
                                           :year => 2013
         )
         a_race_detail = RaceDetail.create(:number => 880,
                                           :round => 2,
                                           :total_laps => 56,
                                           :circuit_length => 5.543,
                                           :race_date_on => "2013-03-24",
                                           :race_name => "Malaysia",
                                           :race_name_gp => "Malaysian",
                                           :circuit => "Sepang",
                                           :year => 2013
         )
         a_race_detail = RaceDetail.create(:number => 881,
                                           :round => 3,
                                           :total_laps => 56,
                                           :circuit_length => 5.451,
                                           :race_date_on => "2014-04-14",
                                           :race_name => "China",
                                           :race_name_gp => "Chinese",
                                           :circuit => "Shanghai International",
                                           :year => 2014
         )
         a_race_detail = RaceDetail.create(:number => 882,
                                           :round => 4,
                                           :total_laps => 49,
                                           :circuit_length => 6.299,
                                           :race_date_on => "2013-04-21",
                                           :race_name => "Bahrain",
                                           :race_name_gp => "Bahrain",
                                           :circuit => "Sakhir",
                                           :year => 2013
         )
         a_race_detail = RaceDetail.create(:number => 883,
                                           :round => 5,
                                           :total_laps => 66,
                                           :circuit_length => 4.655,
                                           :race_date_on => "2013-05-12",
                                           :race_name => "Spain",
                                           :race_name_gp => "Spanish",
                                           :circuit => "Barcelona (Circuit de Catalunya)",
                                           :year => 2013
         )
         a_race_detail = RaceDetail.create(:number => 884,
                                           :round => 6,
                                           :total_laps => 78,
                                           :circuit_length => 3.340,
                                           :race_date_on => "2013-05-26",
                                           :race_name => "Monaco",
                                           :race_name_gp => "Monaco",
                                           :circuit => "Monaco",
                                           :year => 2013
         )
         a_race_detail = RaceDetail.create(:number => 885,
                                           :round => 7,
                                           :total_laps => 70,
                                           :circuit_length => 4.361,
                                           :race_date_on => "2013-06-09",
                                           :race_name => "Canada",
                                           :race_name_gp => "Canadian",
                                           :circuit => "Montreal",
                                           :year => 2013
         )
         a_race_detail = RaceDetail.create(:number => 886,
                                           :round => 8,
                                           :total_laps => 60,
                                           :circuit_length => 5.141,
                                           :race_date_on => "2013-06-30",
                                           :race_name => "Britain",
                                           :race_name_gp => "British",
                                           :circuit => "Silverstone",
                                           :year => 2013
         )
         a_race_detail = RaceDetail.create(:number => 887,
                                           :round => 9,
                                           :total_laps => 70,
                                           :circuit_length => 4.574,
                                           :race_date_on => "2013-07-07",
                                           :race_name => "Germany",
                                           :race_name_gp => "German",
                                           :circuit => "Nurburgring",
                                           :year => 2013
         )
         a_race_detail = RaceDetail.create(:number => 888,
                                           :round => 10,
                                           :total_laps => 70,
                                           :circuit_length => 4.381,
                                           :race_date_on => "2013-07-28",
                                           :race_name => "Hungary",
                                           :race_name_gp => "Hungarian",
                                           :circuit => "Hungaroring",
                                           :year => 2013
         )
         a_race_detail = RaceDetail.create(:number => 889,
                                           :round => 11,
                                           :total_laps => 44,
                                           :circuit_length => 7.004,
                                           :race_date_on => "2013-08-25",
                                           :race_name => "Belgium",
                                           :race_name_gp => "Belgian",
                                           :circuit => "Spa-Francorchamps",
                                           :year => 2013
         )
         a_race_detail = RaceDetail.create(:number => 890,
                                           :round => 12,
                                           :total_laps => 53,
                                           :circuit_length => 5.793,
                                           :race_date_on => "2013-09-08",
                                           :race_name => "Italy",
                                           :race_name_gp => "Italian",
                                           :circuit => "Monza",
                                           :year => 2013
         )
         a_race_detail = RaceDetail.create(:number => 891,
                                           :round => 13,
                                           :total_laps => 61,
                                           :circuit_length => 5.073,
                                           :race_date_on => "2013-09-22",
                                           :race_name => "Singapore",
                                           :race_name_gp => "Singapore",
                                           :circuit => "Singapore",
                                           :year => 2013
         )
         a_race_detail = RaceDetail.create(:number => 892,
                                           :round => 14,
                                           :total_laps => 55,
                                           :circuit_length => 5.621,
                                           :race_date_on => "2013-10-06",
                                           :race_name => "Korea",
                                           :race_name_gp => "Korean",
                                           :circuit => "Yeongam",
                                           :year => 2013
         )
         a_race_detail = RaceDetail.create(:number => 893,
                                           :round => 15,
                                           :total_laps => 53,
                                           :circuit_length => 5.807,
                                           :race_date_on => "2013-10-13",
                                           :race_name => "Japan",
                                           :race_name_gp => "Japanese",
                                           :circuit => "Suzuka",
                                           :year => 2013
         )
         a_race_detail = RaceDetail.create(:number => 894,
                                           :round => 16,
                                           :total_laps => 60,
                                           :circuit_length => 5.137,
                                           :race_date_on => "2013-10-27",
                                           :race_name => "India",
                                           :race_name_gp => "Indian",
                                           :circuit => "New Delhi",
                                           :year => 2013
         )
         a_race_detail = RaceDetail.create(:number => 895,
                                           :round => 17,
                                           :total_laps => 55,
                                           :circuit_length => 5.554,
                                           :race_date_on => "2013-11-03",
                                           :race_name => "Abu Dhabi",
                                           :race_name_gp => "Abu Dhabi",
                                           :circuit => "Yas Marina",
                                           :year => 2013
         )
         a_race_detail = RaceDetail.create(:number => 896,
                                           :round => 18,
                                           :total_laps => 56,
                                           :circuit_length => 5.516,
                                           :race_date_on => "2013-11-17",
                                           :race_name => "United States",
                                           :race_name_gp => "United States",
                                           :circuit => "Austin, Texas",
                                           :year => 2013
         )
          a_race_detail = RaceDetail.create(:number => 897,
                                             :round => 19,
                                             :total_laps => 71,
                                             :circuit_length => 4.309,
                                             :race_date_on => "2013-11-24",
                                             :race_name => "Brazil",
                                             :race_name_gp => "Brazilian",
                                             :circuit => "Interlagos",
                                             :year => 2013
           )


           # Add 2014 races
           a_race_detail = RaceDetail.create(:number => 898,
                                             :round => 1,
                                             :total_laps => 58,
                                             :circuit_length => 5.303,
                                             :race_date_on => "2014-03-16",
                                             :race_name => "Australia",
                                             :race_name_gp => "Australian",
                                             :circuit => "Albert Park",
                                             :year => 2014
           )
           a_race_detail = RaceDetail.create(:number => 899,
                                             :round => 2,
                                             :total_laps => 56,
                                             :circuit_length => 5.543,
                                             :race_date_on => "2014-03-30",
                                             :race_name => "Malaysia",
                                             :race_name_gp => "Malaysian",
                                             :circuit => "Sepang",
                                             :year => 2014
           )
           a_race_detail = RaceDetail.create(:number => 900,
                                             :round => 3,
                                             :total_laps => 57,
                                             :circuit_length => 5.412,
                                             :race_date_on => "2014-04-06",
                                             :race_name => "Bahrain",
                                             :race_name_gp => "Bahrain",
                                             :circuit => "Sakhir",
                                             :year => 2014
           )
           a_race_detail = RaceDetail.create(:number => 901,
                                             :round => 4,
                                             :total_laps => 56,
                                             :circuit_length => 5.451,
                                             :race_date_on => "2014-04-20",
                                             :race_name => "China",
                                             :race_name_gp => "Chinese",
                                             :circuit => "Shanghai International",
                                             :year => 2014
           )
           a_race_detail = RaceDetail.create(:number => 902,
                                             :round => 5,
                                             :total_laps => 66,
                                             :circuit_length => 4.655,
                                             :race_date_on => "2014-05-11",
                                             :race_name => "Spain",
                                             :race_name_gp => "Spanish",
                                             :circuit => "Barcelona (Circuit de Catalunya)",
                                             :year => 2014
           )
           a_race_detail = RaceDetail.create(:number => 903,
                                             :round => 6,
                                             :total_laps => 78,
                                             :circuit_length => 3.340,
                                             :race_date_on => "2014-05-25",
                                             :race_name => "Monaco",
                                             :race_name_gp => "Monaco",
                                             :circuit => "Monaco",
                                             :year => 2014
           )
           a_race_detail = RaceDetail.create(:number => 904,
                                             :round => 7,
                                             :total_laps => 70,
                                             :circuit_length => 4.361,
                                             :race_date_on => "2014-06-08",
                                             :race_name => "Canada",
                                             :race_name_gp => "Canadian",
                                             :circuit => "Montreal",
                                             :year => 2014
           )
           a_race_detail = RaceDetail.create(:number => 905,
                                             :round => 8,
                                             :total_laps => 71,
                                             :circuit_length => 4.326,
                                             :race_date_on => "2014-06-22",
                                             :race_name => "Austria",
                                             :race_name_gp => "Austrian",
                                             :circuit => "Spielberg",
                                             :year => 2014
           )
           a_race_detail = RaceDetail.create(:number => 906,
                                             :round => 9,
                                             :total_laps => 51,
                                             :circuit_length => 5.891,
                                             :race_date_on => "2014-07-06",
                                             :race_name => "Britain",
                                             :race_name_gp => "British",
                                             :circuit => "Silverstone",
                                             :year => 2014
           )
           a_race_detail = RaceDetail.create(:number => 907,
                                             :round => 10,
                                             :total_laps => 67,
                                             :circuit_length => 4.574,
                                             :race_date_on => "2014-07-20",
                                             :race_name => "Germany",
                                             :race_name_gp => "German",
                                             :circuit => "Hockenheim",
                                             :year => 2014
           )
           a_race_detail = RaceDetail.create(:number => 908,
                                             :round => 11,
                                             :total_laps => 70,
                                             :circuit_length => 4.381,
                                             :race_date_on => "2014-07-27",
                                             :race_name => "Hungary",
                                             :race_name_gp => "Hungarian",
                                             :circuit => "Hungaroring",
                                             :year => 2014
           )
           a_race_detail = RaceDetail.create(:number => 909,
                                             :round => 12,
                                             :total_laps => 44,
                                             :circuit_length => 7.004,
                                             :race_date_on => "2014-08-24",
                                             :race_name => "Belgium",
                                             :race_name_gp => "Belgian",
                                             :circuit => "Spa-Francorchamps",
                                             :year => 2014
           )
           a_race_detail = RaceDetail.create(:number => 910,
                                             :round => 13,
                                             :total_laps => 53,
                                             :circuit_length => 5.793,
                                             :race_date_on => "2014-09-07",
                                             :race_name => "Italy",
                                             :race_name_gp => "Italian",
                                             :circuit => "Monza",
                                             :year => 2014
           )
           a_race_detail = RaceDetail.create(:number => 911,
                                             :round => 14,
                                             :total_laps => 61,
                                             :circuit_length => 5.065,
                                             :race_date_on => "2014-09-21",
                                             :race_name => "Singapore",
                                             :race_name_gp => "Singapore",
                                             :circuit => "Singapore",
                                             :year => 2014
           )
           a_race_detail = RaceDetail.create(:number => 912,
                                             :round => 15,
                                             :total_laps => 53,
                                             :circuit_length => 5.807,
                                             :race_date_on => "2014-10-05",
                                             :race_name => "Japan",
                                             :race_name_gp => "Japanese",
                                             :circuit => "Suzuka",
                                             :year => 2014
           )
           a_race_detail = RaceDetail.create(:number => 913,
                                             :round => 16,
                                             :total_laps => 53,
                                             :circuit_length => 5.853,
                                             :race_date_on => "2014-10-12",
                                             :race_name => "Russia",
                                             :race_name_gp => "Russian",
                                             :circuit => "Sochi",
                                             :year => 2014
           )
           a_race_detail = RaceDetail.create(:number => 914,
                                             :round => 17,
                                             :total_laps => 56,
                                             :circuit_length => 5.516,
                                             :race_date_on => "2014-11-02",
                                             :race_name => "United States",
                                             :race_name_gp => "United States",
                                             :circuit => "Austin, Texas",
                                             :year => 2014
           )
           a_race_detail = RaceDetail.create(:number => 915,
                                              :round => 18,
                                              :total_laps => 71,
                                              :circuit_length => 4.309,
                                              :race_date_on => "2014-11-9",
                                              :race_name => "Brazil",
                                              :race_name_gp => "Brazilian",
                                              :circuit => "Interlagos",
                                              :year => 2014
            )
           a_race_detail = RaceDetail.create(:number => 916,
                                             :round => 19,
                                             :total_laps => 55,
                                             :circuit_length => 5.554,
                                             :race_date_on => "2014-11-23",
                                             :race_name => "Abu Dhabi",
                                             :race_name_gp => "Abu Dhabi",
                                             :circuit => "Yas Marina",
                                             :year => 2014
           )


           # Add 2015 races
           a_race_detail = RaceDetail.create(:number => 917,
                                             :round => 1,
                                             :total_laps => 58,
                                             :circuit_length => 5.303,
                                             :race_date_on => "2015-03-15",
                                             :race_name => "Australia",
                                             :race_name_gp => "Australian",
                                             :circuit => "Albert Park",
                                             :year => 2015
           )
           a_race_detail = RaceDetail.create(:number => 918,
                                             :round => 2,
                                             :total_laps => 56,
                                             :circuit_length => 5.543,
                                             :race_date_on => "2015-03-29",
                                             :race_name => "Malaysia",
                                             :race_name_gp => "Malaysian",
                                             :circuit => "Sepang",
                                             :year => 2015
           )
           a_race_detail = RaceDetail.create(:number => 919,
                                             :round => 3,
                                             :total_laps => 56,
                                             :circuit_length => 5.451,
                                             :race_date_on => "2015-04-12",
                                             :race_name => "China",
                                             :race_name_gp => "Chinese",
                                             :circuit => "Shanghai International",
                                             :year => 2015
           )
           a_race_detail = RaceDetail.create(:number => 920,
                                             :round => 4,
                                             :total_laps => 57,
                                             :circuit_length => 5.412,
                                             :race_date_on => "2015-04-19",
                                             :race_name => "Bahrain",
                                             :race_name_gp => "Bahrain",
                                             :circuit => "Sakhir",
                                             :year => 2015
           )
           a_race_detail = RaceDetail.create(:number => 921,
                                             :round => 5,
                                             :total_laps => 66,
                                             :circuit_length => 4.655,
                                             :race_date_on => "2015-05-10",
                                             :race_name => "Spain",
                                             :race_name_gp => "Spanish",
                                             :circuit => "Barcelona (Circuit de Catalunya)",
                                             :year => 2015
           )
           a_race_detail = RaceDetail.create(:number => 922,
                                             :round => 6,
                                             :total_laps => 78,
                                             :circuit_length => 3.340,
                                             :race_date_on => "2015-05-24",
                                             :race_name => "Monaco",
                                             :race_name_gp => "Monaco",
                                             :circuit => "Monaco",
                                             :year => 2015
           )
           a_race_detail = RaceDetail.create(:number => 923,
                                             :round => 7,
                                             :total_laps => 70,
                                             :circuit_length => 4.361,
                                             :race_date_on => "2015-06-07",
                                             :race_name => "Canada",
                                             :race_name_gp => "Canadian",
                                             :circuit => "Montreal",
                                             :year => 2015
           )
           a_race_detail = RaceDetail.create(:number => 924,
                                             :round => 8,
                                             :total_laps => 71,
                                             :circuit_length => 4.326,
                                             :race_date_on => "2015-06-21",
                                             :race_name => "Austria",
                                             :race_name_gp => "Austrian",
                                             :circuit => "Spielberg",
                                             :year => 2015
           )
           a_race_detail = RaceDetail.create(:number => 925,
                                             :round => 9,
                                             :total_laps => 51,
                                             :circuit_length => 5.891,
                                             :race_date_on => "2015-07-05",
                                             :race_name => "Britain",
                                             :race_name_gp => "British",
                                             :circuit => "Silverstone",
                                             :year => 2015
           )



           # Germany cancelled



           a_race_detail = RaceDetail.create(:number => 926,
                                             :round => 10,
                                             :total_laps => 70,
                                             :circuit_length => 4.381,
                                             :race_date_on => "2015-07-26",
                                             :race_name => "Hungary",
                                             :race_name_gp => "Hungarian",
                                             :circuit => "Hungaroring",
                                             :year => 2015
           )
           a_race_detail = RaceDetail.create(:number => 927,
                                             :round => 11,
                                             :total_laps => 44,
                                             :circuit_length => 7.004,
                                             :race_date_on => "2015-08-23",
                                             :race_name => "Belgium",
                                             :race_name_gp => "Belgian",
                                             :circuit => "Spa-Francorchamps",
                                             :year => 2015
           )
           a_race_detail = RaceDetail.create(:number => 928,
                                             :round => 12,
                                             :total_laps => 53,
                                             :circuit_length => 5.793,
                                             :race_date_on => "2015-09-06",
                                             :race_name => "Italy",
                                             :race_name_gp => "Italian",
                                             :circuit => "Monza",
                                             :year => 2015
           )
           a_race_detail = RaceDetail.create(:number => 929,
                                             :round => 13,
                                             :total_laps => 61,
                                             :circuit_length => 5.065,
                                             :race_date_on => "2015-09-20",
                                             :race_name => "Singapore",
                                             :race_name_gp => "Singapore",
                                             :circuit => "Singapore",
                                             :year => 2015
           )
           a_race_detail = RaceDetail.create(:number => 930,
                                             :round => 14,
                                             :total_laps => 53,
                                             :circuit_length => 5.807,
                                             :race_date_on => "2015-09-27",
                                             :race_name => "Japan",
                                             :race_name_gp => "Japanese",
                                             :circuit => "Suzuka",
                                             :year => 2015
           )
           a_race_detail = RaceDetail.create(:number => 931,
                                             :round => 15,
                                             :total_laps => 53,
                                             :circuit_length => 5.853,
                                             :race_date_on => "2015-10-11",
                                             :race_name => "Russia",
                                             :race_name_gp => "Russian",
                                             :circuit => "Sochi",
                                             :year => 2015
           )
           a_race_detail = RaceDetail.create(:number => 932,
                                             :round => 16,
                                             :total_laps => 56,
                                             :circuit_length => 5.516,
                                             :race_date_on => "2015-10-25",
                                             :race_name => "United States",
                                             :race_name_gp => "United States",
                                             :circuit => "Austin, Texas",
                                             :year => 2015
           )
           a_race_detail = RaceDetail.create(:number => 933,
                                              :round => 17,
                                              :total_laps => "71",
                                              :circuit_length => 4.421,
                                              :race_date_on => "2015-11-01",
                                              :race_name => "Mexico",
                                              :race_name_gp => "Mexican",
                                              :circuit => "Autodromo Hermanos Rodriguez",
                                              :year => 2015
            )
            a_race_detail = RaceDetail.create(:number => 934,
                                               :round => 18,
                                               :total_laps => 71,
                                               :circuit_length => 4.309,
                                               :race_date_on => "2015-11-15",
                                               :race_name => "Brazil",
                                               :race_name_gp => "Brazilian",
                                               :circuit => "Interlagos",
                                               :year => 2015
             )
           a_race_detail = RaceDetail.create(:number => 935,
                                             :round => 19,
                                             :total_laps => 55,
                                             :circuit_length => 5.554,
                                             :race_date_on => "2015-11-29",
                                             :race_name => "Abu Dhabi",
                                             :race_name_gp => "Abu Dhabi",
                                             :circuit => "Yas Marina",
                                             :year => 2015
           )








           # Add 2016 races
           a_race_detail = RaceDetail.create(:number => 936,
                                             :round => 1,
                                             :total_laps => 58,
                                             :circuit_length => 5.303,
                                             :race_date_on => "2016-03-20",
                                             :race_name => "Australia",
                                             :race_name_gp => "Australian",
                                             :circuit => "Albert Park",
                                             :year => 2016
           )
           a_race_detail = RaceDetail.create(:number => 937,
                                             :round => 2,
                                             :total_laps => 57,
                                             :circuit_length => 5.412,
                                             :race_date_on => "2016-04-03",
                                             :race_name => "Bahrain",
                                             :race_name_gp => "Bahrain",
                                             :circuit => "Sakhir",
                                             :year => 2016
           )
           a_race_detail = RaceDetail.create(:number => 938,
                                             :round => 3,
                                             :total_laps => 56,
                                             :circuit_length => 5.451,
                                             :race_date_on => "2016-04-17",
                                             :race_name => "China",
                                             :race_name_gp => "Chinese",
                                             :circuit => "Shanghai International",
                                             :year => 2016
           )
           a_race_detail = RaceDetail.create(:number => 939,
                                             :round => 4,
                                             :total_laps => 53,
                                             :circuit_length => 5.848,
                                             :race_date_on => "2016-05-01",
                                             :race_name => "Russia",
                                             :race_name_gp => "Russian",
                                             :circuit => "Sochi",
                                             :year => 2016
           )
           a_race_detail = RaceDetail.create(:number => 940,
                                             :round => 5,
                                             :total_laps => 66,
                                             :circuit_length => 4.655,
                                             :race_date_on => "2016-05-15",
                                             :race_name => "Spain",
                                             :race_name_gp => "Spanish",
                                             :circuit => "Barcelona (Circuit de Catalunya)",
                                             :year => 2016
           )
           a_race_detail = RaceDetail.create(:number => 941,
                                             :round => 6,
                                             :total_laps => 78,
                                             :circuit_length => 3.340,
                                             :race_date_on => "2016-05-29",
                                             :race_name => "Monaco",
                                             :race_name_gp => "Monaco",
                                             :circuit => "Monaco",
                                             :year => 2016
           )
           a_race_detail = RaceDetail.create(:number => 942,
                                             :round => 7,
                                             :total_laps => 70,
                                             :circuit_length => 4.361,
                                             :race_date_on => "2016-06-07",
                                             :race_name => "Canada",
                                             :race_name_gp => "Canadian",
                                             :circuit => "Montreal",
                                             :year => 2016
           )
           a_race_detail = RaceDetail.create(:number => 943,
                                             :round => 8,
                                             :total_laps => 51,
                                             :circuit_length => 6.003,
                                             :race_date_on => "2016-06-19",
                                             :race_name => "Azerbaijan",
                                             :race_name_gp => "European",
                                             :circuit => "Baku City Circuit",
                                             :year => 2016
           )
           a_race_detail = RaceDetail.create(:number => 944,
                                             :round => 9,
                                             :total_laps => 71,
                                             :circuit_length => 4.326,
                                             :race_date_on => "2016-07-03",
                                             :race_name => "Austria",
                                             :race_name_gp => "Austrian",
                                             :circuit => "Spielberg",
                                             :year => 2016
           )
           a_race_detail = RaceDetail.create(:number => 945,
                                             :round => 10,
                                             :total_laps => 52,
                                             :circuit_length => 5.891,
                                             :race_date_on => "2016-07-10",
                                             :race_name => "Britain",
                                             :race_name_gp => "British",
                                             :circuit => "Silverstone",
                                             :year => 2016
           )
           a_race_detail = RaceDetail.create(:number => 946,
                                             :round => 11,
                                             :total_laps => 70,
                                             :circuit_length => 4.381,
                                             :race_date_on => "2016-07-24",
                                             :race_name => "Hungary",
                                             :race_name_gp => "Hungarian",
                                             :circuit => "Hungaroring",
                                             :year => 2016
           )
           a_race_detail = RaceDetail.create(:number => 947,
                                             :round => 12,
                                             :total_laps => 67,
                                             :circuit_length => 4.574,
                                             :race_date_on => "2016-07-31",
                                             :race_name => "Germany",
                                             :race_name_gp => "German",
                                             :circuit => "Hockenheim",
                                             :year => 2016
           )
           a_race_detail = RaceDetail.create(:number => 948,
                                             :round => 13,
                                             :total_laps => 44,
                                             :circuit_length => 7.004,
                                             :race_date_on => "2016-08-28",
                                             :race_name => "Belgium",
                                             :race_name_gp => "Belgian",
                                             :circuit => "Spa-Francorchamps",
                                             :year => 2016
           )
           a_race_detail = RaceDetail.create(:number => 949,
                                             :round => 14,
                                             :total_laps => 53,
                                             :circuit_length => 5.793,
                                             :race_date_on => "2016-09-04",
                                             :race_name => "Italy",
                                             :race_name_gp => "Italian",
                                             :circuit => "Monza",
                                             :year => 2016
           )
           a_race_detail = RaceDetail.create(:number => 950,
                                             :round => 15,
                                             :total_laps => 61,
                                             :circuit_length => 5.065,
                                             :race_date_on => "2016-09-18",
                                             :race_name => "Singapore",
                                             :race_name_gp => "Singapore",
                                             :circuit => "Singapore",
                                             :year => 2016
           )
           a_race_detail = RaceDetail.create(:number => 951,
                                             :round => 16,
                                             :total_laps => 56,
                                             :circuit_length => 5.543,
                                             :race_date_on => "2016-10-02",
                                             :race_name => "Malaysia",
                                             :race_name_gp => "Malaysian",
                                             :circuit => "Sepang",
                                             :year => 2016
           )
           a_race_detail = RaceDetail.create(:number => 952,
                                             :round => 17,
                                             :total_laps => 53,
                                             :circuit_length => 5.807,
                                             :race_date_on => "2016-10-09",
                                             :race_name => "Japan",
                                             :race_name_gp => "Japanese",
                                             :circuit => "Suzuka",
                                             :year => 2016
           )
           a_race_detail = RaceDetail.create(:number => 953,
                                             :round => 18,
                                             :total_laps => 56,
                                             :circuit_length => 5.513,
                                             :race_date_on => "2016-10-23",
                                             :race_name => "United States",
                                             :race_name_gp => "United States",
                                             :circuit => "Austin, Texas",
                                             :year => 2016
           )
           a_race_detail = RaceDetail.create(:number => 954,
                                              :round => 19,
                                              :total_laps => "71",
                                              :circuit_length => 4.304,
                                              :race_date_on => "2016-10-30",
                                              :race_name => "Mexico",
                                              :race_name_gp => "Mexican",
                                              :circuit => "Autodromo Hermanos Rodriguez",
                                              :year => 2016
            )
            a_race_detail = RaceDetail.create(:number => 955,
                                               :round => 20,
                                               :total_laps => 71,
                                               :circuit_length => 4.309,
                                               :race_date_on => "2016-11-13",
                                               :race_name => "Brazil",
                                               :race_name_gp => "Brazilian",
                                               :circuit => "Interlagos",
                                               :year => 2016
             )
           a_race_detail = RaceDetail.create(:number => 956,
                                             :round => 21,
                                             :total_laps => 55,
                                             :circuit_length => 5.554,
                                             :race_date_on => "2016-11-27",
                                             :race_name => "Abu Dhabi",
                                             :race_name_gp => "Abu Dhabi",
                                             :circuit => "Yas Marina",
                                             :year => 2016
           )




           # Add 2017 races
           a_race_detail = RaceDetail.create(:number => 957,
                                             :round => 1,
                                             :total_laps => 58,
                                             :circuit_length => 5.303,
                                             :race_date_on => "2017-03-26",
                                             :race_name => "Australia",
                                             :race_name_gp => "Australian",
                                             :circuit => "Albert Park",
                                             :year => 2017
           )
           a_race_detail = RaceDetail.create(:number => 958,
                                             :round => 2,
                                             :total_laps => 56,
                                             :circuit_length => 5.451,
                                             :race_date_on => "2017-04-09",
                                             :race_name => "China",
                                             :race_name_gp => "Chinese",
                                             :circuit => "Shanghai International",
                                             :year => 2017
           )
           a_race_detail = RaceDetail.create(:number => 959,
                                             :round => 3,
                                             :total_laps => 57,
                                             :circuit_length => 5.412,
                                             :race_date_on => "2017-04-16",
                                             :race_name => "Bahrain",
                                             :race_name_gp => "Bahrain",
                                             :circuit => "Sakhir",
                                             :year => 2017
           )
           a_race_detail = RaceDetail.create(:number => 960,
                                             :round => 4,
                                             :total_laps => 53,
                                             :circuit_length => 5.848,
                                             :race_date_on => "2017-04-30",
                                             :race_name => "Russia",
                                             :race_name_gp => "Russian",
                                             :circuit => "Sochi",
                                             :year => 2017
           )
           a_race_detail = RaceDetail.create(:number => 961,
                                             :round => 5,
                                             :total_laps => 66,
                                             :circuit_length => 4.655,
                                             :race_date_on => "2017-05-14",
                                             :race_name => "Spain",
                                             :race_name_gp => "Spanish",
                                             :circuit => "Barcelona (Circuit de Catalunya)",
                                             :year => 2017
           )
           a_race_detail = RaceDetail.create(:number => 962,
                                             :round => 6,
                                             :total_laps => 78,
                                             :circuit_length => 3.337,
                                             :race_date_on => "2017-05-28",
                                             :race_name => "Monaco",
                                             :race_name_gp => "Monaco",
                                             :circuit => "Monaco",
                                             :year => 2017
           )
           a_race_detail = RaceDetail.create(:number => 963,
                                             :round => 7,
                                             :total_laps => 70,
                                             :circuit_length => 4.361,
                                             :race_date_on => "2017-06-11",
                                             :race_name => "Canada",
                                             :race_name_gp => "Canadian",
                                             :circuit => "Montreal",
                                             :year => 2017
           )
           a_race_detail = RaceDetail.create(:number => 964,
                                             :round => 8,
                                             :total_laps => 51,
                                             :circuit_length => 6.003,
                                             :race_date_on => "2017-06-25",
                                             :race_name => "Azerbaijan",
                                             :race_name_gp => "Azerbaijan",
                                             :circuit => "Baku City Circuit",
                                             :year => 2017
           )
           a_race_detail = RaceDetail.create(:number => 965,
                                             :round => 9,
                                             :total_laps => 71,
                                             :circuit_length => 4.326,
                                             :race_date_on => "2017-07-09",
                                             :race_name => "Austria",
                                             :race_name_gp => "Austrian",
                                             :circuit => "Spielberg",
                                             :year => 2017
           )
           a_race_detail = RaceDetail.create(:number => 966,
                                             :round => 10,
                                             :total_laps => 52,
                                             :circuit_length => 5.891,
                                             :race_date_on => "2017-07-17",
                                             :race_name => "Britain",
                                             :race_name_gp => "British",
                                             :circuit => "Silverstone",
                                             :year => 2017
           )
           a_race_detail = RaceDetail.create(:number => 967,
                                             :round => 11,
                                             :total_laps => 70,
                                             :circuit_length => 4.381,
                                             :race_date_on => "2017-07-30",
                                             :race_name => "Hungary",
                                             :race_name_gp => "Hungarian",
                                             :circuit => "Hungaroring",
                                             :year => 2017
           )
           a_race_detail = RaceDetail.create(:number => 968,
                                             :round => 12,
                                             :total_laps => 44,
                                             :circuit_length => 7.004,
                                             :race_date_on => "2017-08-27",
                                             :race_name => "Belgium",
                                             :race_name_gp => "Belgian",
                                             :circuit => "Spa-Francorchamps",
                                             :year => 2017
           )
           a_race_detail = RaceDetail.create(:number => 969,
                                             :round => 13,
                                             :total_laps => 53,
                                             :circuit_length => 5.793,
                                             :race_date_on => "2017-09-03",
                                             :race_name => "Italy",
                                             :race_name_gp => "Italian",
                                             :circuit => "Monza",
                                             :year => 2017
           )
           a_race_detail = RaceDetail.create(:number => 970,
                                             :round => 14,
                                             :total_laps => 61,
                                             :circuit_length => 5.065,
                                             :race_date_on => "2017-09-17",
                                             :race_name => "Singapore",
                                             :race_name_gp => "Singapore",
                                             :circuit => "Singapore",
                                             :year => 2017
           )
           a_race_detail = RaceDetail.create(:number => 971,
                                             :round => 15,
                                             :total_laps => 56,
                                             :circuit_length => 5.543,
                                             :race_date_on => "2017-10-01",
                                             :race_name => "Malaysia",
                                             :race_name_gp => "Malaysian",
                                             :circuit => "Sepang",
                                             :year => 2017
           )
           a_race_detail = RaceDetail.create(:number => 972,
                                             :round => 16,
                                             :total_laps => 53,
                                             :circuit_length => 5.807,
                                             :race_date_on => "2017-10-08",
                                             :race_name => "Japan",
                                             :race_name_gp => "Japanese",
                                             :circuit => "Suzuka",
                                             :year => 2017
           )
           a_race_detail = RaceDetail.create(:number => 973,
                                             :round => 17,
                                             :total_laps => 56,
                                             :circuit_length => 5.513,
                                             :race_date_on => "2017-10-22",
                                             :race_name => "United States",
                                             :race_name_gp => "United States",
                                             :circuit => "Austin, Texas",
                                             :year => 2017
           )
           a_race_detail = RaceDetail.create(:number => 974,
                                              :round => 18,
                                              :total_laps => "71",
                                              :circuit_length => 4.304,
                                              :race_date_on => "2017-10-29",
                                              :race_name => "Mexico",
                                              :race_name_gp => "Mexican",
                                              :circuit => "Autodromo Hermanos Rodriguez",
                                              :year => 2017
            )
            a_race_detail = RaceDetail.create(:number => 975,
                                               :round => 19,
                                               :total_laps => 71,
                                               :circuit_length => 4.309,
                                               :race_date_on => "2017-11-17",
                                               :race_name => "Brazil",
                                               :race_name_gp => "Brazilian",
                                               :circuit => "Interlagos",
                                               :year => 2017
             )
           a_race_detail = RaceDetail.create(:number => 976,
                                             :round => 20,
                                             :total_laps => 55,
                                             :circuit_length => 5.554,
                                             :race_date_on => "2017-11-26",
                                             :race_name => "Abu Dhabi",
                                             :race_name_gp => "Abu Dhabi",
                                             :circuit => "Yas Marina",
                                             :year => 2017
           )






           # Add 2018 races
           a_race_detail = RaceDetail.create(:number => 977,
                                             :round => 1,
                                             :total_laps => 58,
                                             :circuit_length => 5.303,
                                             :race_date_on => "2018-03-25",
                                             :race_name => "Australia",
                                             :race_name_gp => "Australian",
                                             :circuit => "Albert Park",
                                             :year => 2018
           )
           a_race_detail = RaceDetail.create(:number => 978,
                                             :round => 2,
                                             :total_laps => 57,
                                             :circuit_length => 5.412,
                                             :race_date_on => "2018-04-08",
                                             :race_name => "Bahrain",
                                             :race_name_gp => "Bahrain",
                                             :circuit => "Sakhir",
                                             :year => 2018
           )
           a_race_detail = RaceDetail.create(:number => 979,
                                             :round => 3,
                                             :total_laps => 56,
                                             :circuit_length => 5.451,
                                             :race_date_on => "2018-04-15",
                                             :race_name => "China",
                                             :race_name_gp => "Chinese",
                                             :circuit => "Shanghai International",
                                             :year => 2018
           )
           a_race_detail = RaceDetail.create(:number => 980,
                                             :round => 4,
                                             :total_laps => 51,
                                             :circuit_length => 6.003,
                                             :race_date_on => "2018-04-29",
                                             :race_name => "Azerbaijan",
                                             :race_name_gp => "Azerbaijan",
                                             :circuit => "Baku City Circuit",
                                             :year => 2018
           )
           a_race_detail = RaceDetail.create(:number => 981,
                                             :round => 5,
                                             :total_laps => 66,
                                             :circuit_length => 4.655,
                                             :race_date_on => "2018-05-13",
                                             :race_name => "Spain",
                                             :race_name_gp => "Spanish",
                                             :circuit => "Barcelona (Circuit de Catalunya)",
                                             :year => 2018
           )
           a_race_detail = RaceDetail.create(:number => 982,
                                             :round => 6,
                                             :total_laps => 78,
                                             :circuit_length => 3.337,
                                             :race_date_on => "2018-05-27",
                                             :race_name => "Monaco",
                                             :race_name_gp => "Monaco",
                                             :circuit => "Monaco",
                                             :year => 2018
           )
           a_race_detail = RaceDetail.create(:number => 983,
                                             :round => 7,
                                             :total_laps => 70,
                                             :circuit_length => 4.361,
                                             :race_date_on => "2018-06-10",
                                             :race_name => "Canada",
                                             :race_name_gp => "Canadian",
                                             :circuit => "Montreal",
                                             :year => 2018
           )
           a_race_detail = RaceDetail.create(:number => 984,
                                             :round => 8,
                                             :total_laps => 52,
                                             :circuit_length => 5.861,
                                             :race_date_on => "2018-06-24",
                                             :race_name => "France",
                                             :race_name_gp => "French",
                                             :circuit => "Circuit Paul Ricard",
                                             :year => 2018
           )
           a_race_detail = RaceDetail.create(:number => 985,
                                             :round => 9,
                                             :total_laps => 71,
                                             :circuit_length => 4.326,
                                             :race_date_on => "2018-07-01",
                                             :race_name => "Austria",
                                             :race_name_gp => "Austrian",
                                             :circuit => "Spielberg",
                                             :year => 2018
           )
           a_race_detail = RaceDetail.create(:number => 986,
                                             :round => 10,
                                             :total_laps => 52,
                                             :circuit_length => 5.891,
                                             :race_date_on => "2018-07-08",
                                             :race_name => "Britain",
                                             :race_name_gp => "British",
                                             :circuit => "Silverstone",
                                             :year => 2018
           )
           a_race_detail = RaceDetail.create(:number => 987,
                                             :round => 11,
                                             :total_laps => 67,
                                             :circuit_length => 4.574,
                                             :race_date_on => "2018-07-22",
                                             :race_name => "Germany",
                                             :race_name_gp => "German",
                                             :circuit => "Hockenheim",
                                             :year => 2018
           )
           a_race_detail = RaceDetail.create(:number => 988,
                                             :round => 12,
                                             :total_laps => 70,
                                             :circuit_length => 4.381,
                                             :race_date_on => "2018-07-29",
                                             :race_name => "Hungary",
                                             :race_name_gp => "Hungarian",
                                             :circuit => "Hungaroring",
                                             :year => 2018
           )
           a_race_detail = RaceDetail.create(:number => 989,
                                             :round => 13,
                                             :total_laps => 44,
                                             :circuit_length => 7.004,
                                             :race_date_on => "2018-08-26",
                                             :race_name => "Belgium",
                                             :race_name_gp => "Belgian",
                                             :circuit => "Spa-Francorchamps",
                                             :year => 2018
           )
           a_race_detail = RaceDetail.create(:number => 990,
                                             :round => 14,
                                             :total_laps => 53,
                                             :circuit_length => 5.793,
                                             :race_date_on => "2018-09-02",
                                             :race_name => "Italy",
                                             :race_name_gp => "Italian",
                                             :circuit => "Monza",
                                             :year => 2018
           )
           a_race_detail = RaceDetail.create(:number => 991,
                                             :round => 15,
                                             :total_laps => 61,
                                             :circuit_length => 5.065,
                                             :race_date_on => "2018-09-16",
                                             :race_name => "Singapore",
                                             :race_name_gp => "Singapore",
                                             :circuit => "Singapore",
                                             :year => 2018
           )
           a_race_detail = RaceDetail.create(:number => 992,
                                             :round => 16,
                                             :total_laps => 53,
                                             :circuit_length => 5.848,
                                             :race_date_on => "2018-09-30",
                                             :race_name => "Russia",
                                             :race_name_gp => "Russian",
                                             :circuit => "Sochi",
                                             :year => 2018
           )
           a_race_detail = RaceDetail.create(:number => 993,
                                             :round => 17,
                                             :total_laps => 53,
                                             :circuit_length => 5.807,
                                             :race_date_on => "2018-10-07",
                                             :race_name => "Japan",
                                             :race_name_gp => "Japanese",
                                             :circuit => "Suzuka",
                                             :year => 2018
           )
           a_race_detail = RaceDetail.create(:number => 994,
                                             :round => 18,
                                             :total_laps => 56,
                                             :circuit_length => 5.513,
                                             :race_date_on => "2018-10-21",
                                             :race_name => "United States",
                                             :race_name_gp => "United States",
                                             :circuit => "Austin, Texas",
                                             :year => 2018
           )
           a_race_detail = RaceDetail.create(:number => 995,
                                              :round => 19,
                                              :total_laps => "71",
                                              :circuit_length => 4.304,
                                              :race_date_on => "2018-10-28",
                                              :race_name => "Mexico",
                                              :race_name_gp => "Mexican",
                                              :circuit => "Autodromo Hermanos Rodriguez",
                                              :year => 2018
            )
            a_race_detail = RaceDetail.create(:number => 996,
                                               :round => 20,
                                               :total_laps => 71,
                                               :circuit_length => 4.309,
                                               :race_date_on => "2018-11-11",
                                               :race_name => "Brazil",
                                               :race_name_gp => "Brazilian",
                                               :circuit => "Interlagos",
                                               :year => 2018
             )
           a_race_detail = RaceDetail.create(:number => 997,
                                             :round => 21,
                                             :total_laps => 55,
                                             :circuit_length => 5.554,
                                             :race_date_on => "2018-11-25",
                                             :race_name => "Abu Dhabi",
                                             :race_name_gp => "Abu Dhabi",
                                             :circuit => "Yas Marina",
                                             :year => 2018
           )
         end


     end




     def convert_old_publish_areas_to_categories
       @pa_info = LegacyPublishAreaTable.order("id")
       @count = 1
       @category_temp_st_name1 = Array.new(20)
       @category_temp_st_name2 = Array.new(20)
       @category_temp_st_name3 = Array.new(20)
       @category_temp_st_name4 = Array.new(20)
       @category_temp_st_name5 = Array.new(20)
       @category_temp_st_name6 = Array.new(20)
       @category_temp_st_name7 = Array.new(20)
       @category_temp_st_name8 = Array.new(20)
       @category_temp_st_name9 = Array.new(20)
       @category_temp_st_path1 = Array.new(20)
       @category_temp_st_path2 = Array.new(20)
       @category_temp_st_path3 = Array.new(20)
       @category_temp_st_path4 = Array.new(20)
       @category_temp_st_path5 = Array.new(20)
       @category_temp_st_path6 = Array.new(20)
       @category_temp_st_path7 = Array.new(20)
       @category_temp_st_path8 = Array.new(20)
       @category_temp_st_path9 = Array.new(20)
       @category_temp_st_prefix1 = Array.new(20)
       @category_temp_st_prefix2 = Array.new(20)
       @category_temp_st_prefix3 = Array.new(20)
       @category_temp_st_prefix4 = Array.new(20)
       @category_temp_st_prefix5 = Array.new(20)
       @category_temp_st_prefix6 = Array.new(20)
       @category_temp_st_prefix7 = Array.new(20)
       @category_temp_st_prefix8 = Array.new(20)
       @category_temp_st_prefix9 = Array.new(20)
       # check to see if table is populated

       @category_count = Category.count
       puts "count = #{@category_count}"
       if @category_count >= 1
         @does_category_exist = 1
       else
         @does_category_exist = 0
       end
       y = 1
       @pa_info.each do |info|
         if info.PublishAreaActive == "1"
           puts "PublishAreaName: #{@count} - #{info.PublishAreaName}"

           if @does_category_exist == 0 # if table is populated skip saving records
             a_category = Category.new
             a_category.name = info.PublishAreaName
             a_category.number = y
             y = y + 1
             a_category.save
           end
           @category_temp_st_name1[@count] = info.STName1
           @category_temp_st_name2[@count] = info.STName2
           @category_temp_st_name3[@count] = info.STName3
           @category_temp_st_name4[@count] = info.STName4
           @category_temp_st_name5[@count] = info.STName5
           @category_temp_st_name6[@count] = info.STName6
           @category_temp_st_name7[@count] = info.STName7
           @category_temp_st_name8[@count] = info.STName8
           @category_temp_st_name9[@count] = info.STName9
           @category_temp_st_path1[@count] = info.STPath1
           @category_temp_st_path2[@count] = info.STPath2
           @category_temp_st_path3[@count] = info.STPath3
           @category_temp_st_path4[@count] = info.STPath4
           @category_temp_st_path5[@count] = info.STPath5
           @category_temp_st_path6[@count] = info.STPath6
           @category_temp_st_path7[@count] = info.STPath7
           @category_temp_st_path8[@count] = info.STPath8
           @category_temp_st_path9[@count] = info.STPath9
           @category_temp_st_prefix1[@count] = info.STPrefix1
           @category_temp_st_prefix2[@count] = info.STPrefix2
           @category_temp_st_prefix3[@count] = info.STPrefix3
           @category_temp_st_prefix4[@count] = info.STPrefix4
           @category_temp_st_prefix5[@count] = info.STPrefix5
           @category_temp_st_prefix6[@count] = info.STPrefix6
           @category_temp_st_prefix7[@count] = info.STPrefix7
           @category_temp_st_prefix8[@count] = info.STPrefix8
           @category_temp_st_prefix9[@count] = info.STPrefix9

           @count = @count + 1
         end
       end
       10.times do |count|
         # puts "#{@category_temp_st_name1[count+1]}"
         # puts "#{@category_temp_st_name2[count+1]}"
         # puts "#{@category_temp_st_name3[count+1]}"
         # puts "#{@category_temp_st_name4[count+1]}"
         # puts "#{@category_temp_st_name5[count+1]}"
         # puts "#{@category_temp_st_name6[count+1]}"
         # puts "#{@category_temp_st_name7[count+1]}"
         # puts "#{@category_temp_st_name8[count+1]}"
         # puts "#{@category_temp_st_name9[count+1]}"
         # puts "#{@category_temp_st_path1[count+1]}"
         # puts "#{@category_temp_st_path2[count+1]}"
         # puts "#{@category_temp_st_path3[count+1]}"
         # puts "#{@category_temp_st_path4[count+1]}"
         # puts "#{@category_temp_st_path5[count+1]}"
         # puts "#{@category_temp_st_path6[count+1]}"
         # puts "#{@category_temp_st_path7[count+1]}"
         # puts "#{@category_temp_st_path8[count+1]}"
         # puts "#{@category_temp_st_path9[count+1]}"
         # puts "#{@category_temp_st_prefix1[count+1]}"
         # puts "#{@category_temp_st_prefix2[count+1]}"
         # puts "#{@category_temp_st_prefix3[count+1]}"
         # puts "#{@category_temp_st_prefix4[count+1]}"
         # puts "#{@category_temp_st_prefix5[count+1]}"
         # puts "#{@category_temp_st_prefix6[count+1]}"
         # puts "#{@category_temp_st_prefix7[count+1]}"
         # puts "#{@category_temp_st_prefix8[count+1]}"
         # puts "#{@category_temp_st_prefix9[count+1]}"
       end

       if @does_category_exist == 0 # if table is populated skip saving records
         a_category = Category.new
         a_category.name = "GP Columns"
         a_category.number = y
         a_category.save
       end
         y = y + 1

     end











 
end
