class ManageController < ApplicationController
  before_action :authenticate_user!
  
  
  
   def newnewsstory
     @story = Story.new
     @story.category_id = 1
     @story.ornament_id = 1
     @story.save
    
   end 
   
  def create2019racedetails
    a_race_detail = RaceDetail.new
           
      
      # Add 2021 races
      a_race_detail = RaceDetail.create(:number => 1036,
                                         :round => 1,
                                         :total_laps => 57,
                                         :circuit_length => 5.412,
                                         :race_date_on => "2021-03-28",
                                         :race_name => "Bahrain",
                                         :race_name_gp => "Bahrain",
                                         :circuit => "Bahrain International Circuit",
                                         :year => 2021
       )
       a_race_detail = RaceDetail.create(:number => 1037,
                                          :round => 2,
                                          :total_laps => 63,
                                          :circuit_length => 4.909,
                                          :race_date_on => "2021-04-18",
                                          :race_name => "Emilio Romagna",
                                          :race_name_gp => "Emilio Romagna",
                                          :circuit => "Autodromo Enzo e Dino Ferrari",
                                          :year => 2021
        )
        a_race_detail = RaceDetail.create(:number => 1038,
                                           :round => 3,
                                           :total_laps => 66,
                                           :circuit_length => 4.684,
                                           :race_date_on => "2021-05-02",
                                           :race_name => "Portugal",
                                           :race_name_gp => "Portuguese",
                                           :circuit => "Algarve",
                                           :year => 2021
         )
         a_race_detail = RaceDetail.create(:number => 1039,
                                           :round => 4,
                                           :total_laps => 66,
                                           :circuit_length => 4.655,
                                           :race_date_on => "2021-05-09",
                                           :race_name => "Spain",
                                           :race_name_gp => "Spanish",
                                           :circuit => "Barcelona (Circuit de Catalunya)",
                                           :year => 2021
         )
           a_race_detail = RaceDetail.create(:number => 1040,
                                             :round => 5,
                                             :total_laps => 78,
                                             :circuit_length => 3.337,
                                             :race_date_on => "2021-05-23",
                                             :race_name => "Monaco",
                                             :race_name_gp => "Monaco",
                                             :circuit => "Monaco",
                                             :year => 2021
           )
             a_race_detail = RaceDetail.create(:number => 1041,
                                                :round => 6,
                                                :total_laps => 51,
                                                :circuit_length => 6.003,
                                                :race_date_on => "2021-06-06",
                                                :race_name => "Azerbaijan",
                                                :race_name_gp => "Azerbaijan",
                                                :circuit => "Baku City Circuit",
                                                :year => 2021
              )
             a_race_detail = RaceDetail.create(:number => 1042,
                                               :round => 7,
                                               :total_laps => 70,
                                               :circuit_length => 4.361,
                                               :race_date_on => "2021-06-13",
                                               :race_name => "Canada",
                                               :race_name_gp => "Canadian",
                                               :circuit => "Montreal",
                                               :year => 2021
             )
             a_race_detail = RaceDetail.create(:number => 1043,
                                               :round => 8,
                                               :total_laps => 52,
                                               :circuit_length => 5.861,
                                               :race_date_on => "2021-06-27",
                                               :race_name => "France",
                                               :race_name_gp => "French",
                                               :circuit => "Circuit Paul Ricard",
                                               :year => 2021
             )
             a_race_detail = RaceDetail.create(:number => 1044,
                                               :round => 9,
                                               :total_laps => 71,
                                               :circuit_length => 4.326,
                                               :race_date_on => "2021-07-04",
                                               :race_name => "Austria",
                                               :race_name_gp => "Austrian",
                                               :circuit => "Spielberg",
                                               :year => 2021
             )
             a_race_detail = RaceDetail.create(:number => 1045,
                                               :round => 10,
                                               :total_laps => 52,
                                               :circuit_length => 5.891,
                                               :race_date_on => "2021-07-18",
                                               :race_name => "Britain",
                                               :race_name_gp => "British",
                                               :circuit => "Silverstone",
                                               :year => 2021
             )
             a_race_detail = RaceDetail.create(:number => 1046,
                                                :round => 11,
                                                :total_laps => 70,
                                                :circuit_length => 4.381,
                                                :race_date_on => "2021-08-01",
                                                :race_name => "Hungary",
                                                :race_name_gp => "Hungarian",
                                                :circuit => "Hungaroring",
                                                :year => 2021
              )
              a_race_detail = RaceDetail.create(:number => 1047,
                                                 :round => 12,
                                                 :total_laps => 44,
                                                 :circuit_length => 7.004,
                                                 :race_date_on => "2021-08-29",
                                                 :race_name => "Belgium",
                                                 :race_name_gp => "Belgian",
                                                 :circuit => "Spa-Francorchamps",
                                                 :year => 2021
               )
              a_race_detail = RaceDetail.create(:number => 1048,
                                                :round => 13,
                                                :total_laps => 56,
                                                :circuit_length => 5.451,
                                                :race_date_on => "2021-09-05",
                                                :race_name => "Dutch",
                                                :race_name_gp => "Dutch",
                                                :circuit => "Zandvoort",
                                                :year => 2021
              )
              a_race_detail = RaceDetail.create(:number => 1049,
                                                :round => 14,
                                                :total_laps => 53,
                                                :circuit_length => 5.793,
                                                :race_date_on => "2021-09-12",
                                                :race_name => "Italy",
                                                :race_name_gp => "Italian",
                                                :circuit => "Monza",
                                                :year => 2021
              )
              a_race_detail = RaceDetail.create(:number => 1050,
                                                 :round => 15,
                                                 :total_laps => 53,
                                                 :circuit_length => 5.848,
                                                 :race_date_on => "2021-09-26",
                                                 :race_name => "Russia",
                                                 :race_name_gp => "Russian",
                                                 :circuit => "Sochi",
                                                 :year => 2021
               )
               a_race_detail = RaceDetail.create(:number => 1051,
                                                  :round => 16,
                                                  :total_laps => 61,
                                                  :circuit_length => 5.065,
                                                  :race_date_on => "2021-10-03",
                                                  :race_name => "Singapore",
                                                  :race_name_gp => "Singapore",
                                                  :circuit => "Singapore",
                                                  :year => 2021
                )
                a_race_detail = RaceDetail.create(:number => 1052,
                                                  :round => 17,
                                                  :total_laps => 53,
                                                  :circuit_length => 5.807,
                                                  :race_date_on => "2021-10-10",
                                                  :race_name => "Japan",
                                                  :race_name_gp => "Japanese",
                                                  :circuit => "Suzuka",
                                                  :year => 2021
                )
                a_race_detail = RaceDetail.create(:number => 1053,
                                                  :round => 18,
                                                  :total_laps => 56,
                                                  :circuit_length => 5.513,
                                                  :race_date_on => "2021-10-24",
                                                  :race_name => "United States",
                                                  :race_name_gp => "United States",
                                                  :circuit => "Austin, Texas",
                                                  :year => 2021
                )
                a_race_detail = RaceDetail.create(:number => 1054,
                                                   :round => 19,
                                                   :total_laps => "71",
                                                   :circuit_length => 4.304,
                                                   :race_date_on => "2021-10-31",
                                                   :race_name => "Mexico",
                                                   :race_name_gp => "Mexican",
                                                   :circuit => "Autodromo Hermanos Rodriguez",
                                                   :year => 2021
                 )
                a_race_detail = RaceDetail.create(:number => 1055,
                                                   :round => 20,
                                                   :total_laps => 71,
                                                   :circuit_length => 4.309,
                                                   :race_date_on => "2021-11-07",
                                                   :race_name => "Brazil",
                                                   :race_name_gp => "Brazilian",
                                                   :circuit => "Interlagos",
                                                   :year => 2021
              )
               a_race_detail = RaceDetail.create(:number => 1056,
                                                   :round => 21,
                                                   :total_laps => 58,
                                                   :circuit_length => 5.303,
                                                   :race_date_on => "2021-11-21",
                                                   :race_name => "Australia",
                                                   :race_name_gp => "Australian",
                                                   :circuit => "Albert Park",
                                                   :year => 2021
                 )
                 a_race_detail = RaceDetail.create(:number => 1057,
                                                    :round => 22,
                                                    :total_laps => 49,
                                                    :circuit_length => 6.175,
                                                    :race_date_on => "2021-12-05",
                                                    :race_name => "Saudi Arabia",
                                                    :race_name_gp => "Saudi Arabian",
                                                    :circuit => "Jeddah Street Circuit",
                                                    :year => 2021
                  )
                  a_race_detail = RaceDetail.create(:number => 1058,
                                                     :round => 23,
                                                     :total_laps => 55,
                                                     :circuit_length => 5.554,
                                                     :race_date_on => "2021-12-12",
                                                     :race_name => "Abu Dhabi",
                                                     :race_name_gp => "Abu Dhabi",
                                                     :circuit => "Yas Marina Circuit",
                                                     :year => 2021
                   )


  end

  def createracepages
    
  	@current_race = CurrentRace.first
    @race_number = @current_race.race_number
    
    @race_detail = RaceDetail.find(@current_race.race_number)
    @race_name = @race_detail.race_name
    @race_name_file =  @race_detail.race_name.parameterize.downcase
    @race_date = @race_detail.race_date_on.strftime("%Y%m%d")
      
    this_date_live_on = @race_date
    this_date_live_on2 = "#{this_date_live_on[0,4]}-#{this_date_live_on[4,2]}-#{this_date_live_on[6, 2]}"
    thisyear = "#{this_date_live_on[0,4]}"
    thismonth = "#{this_date_live_on[4,2]}"
    thisdate = "#{this_date_live_on[6, 2]}"



    @story = Story.new
    @story.race_detail_id = @race_number
    @story.category_id = 1
    @story.ornament_id = 2
    @story.priority = 5
    @story.date_live_at = (DateTime.parse this_date_live_on2) - 3.0
    @story.date_live_on = (DateTime.parse this_date_live_on2) - 3.0
    
    @session_name = "Thursday Press Conference"
    @session_name2 = "thursday-press-conference"    
    @story.headline = @session_name
    @story.abstract = @race_name + " GP - " + @session_name
    @story.filename = "/races/" + @race_name_file.downcase + "-gp-" + thisyear + "-" + @session_name2 + ".html"
    @story.name_slug = @race_name_file.downcase + "-gp-" + thisyear + "-" + @session_name2
    @story.author = "Mark Karp"
    @story.save
    
    @story = Story.new
    @story.race_detail_id = @race_number
    @story.category_id = 1
    @story.ornament_id = 2
    @story.priority = 5
    @story.date_live_at = (DateTime.parse this_date_live_on2) - 3.0
    @story.date_live_on = (DateTime.parse this_date_live_on2) - 3.0
    @session_name = "Thursday Photos"
    @session_name2 = "thursday-photos"    
    @story.headline = @session_name
    @story.abstract = @race_name + " GP - " + @session_name
    @story.filename = "/races/" + @race_name_file.downcase + "-gp-" + thisyear + "-" + @session_name2 + ".html"
    @story.name_slug = @race_name_file.downcase + "-gp-" + thisyear + "-" + @session_name2
    @story.author = "Mark Karp"
    @story.save
    
    @story = Story.new
    @story.race_detail_id = @race_number
    @story.category_id = 1
    @story.ornament_id = 2
    @story.priority = 5
    @story.date_live_at = (DateTime.parse this_date_live_on2) - 2.0
    @story.date_live_on = (DateTime.parse this_date_live_on2) - 2.0
     @session_name = "Practice 1 Results"
    @session_name2 = "practice-1-results"    
    @story.headline = @session_name
    @story.abstract = @race_name + " GP - " + @session_name
    @story.filename = "/races/" + @race_name_file.downcase + "-gp-" + thisyear + "-" + @session_name2 + ".html"
    @story.name_slug = @race_name_file.downcase + "-gp-" + thisyear + "-" + @session_name2
    @story.author = "Mark Karp"
    @story.save
    
    @story = Story.new
    @story.race_detail_id = @race_number
    @story.category_id = 1
    @story.ornament_id = 2
    @story.priority = 5
    @story.date_live_at = (DateTime.parse this_date_live_on2) - 2.0
    @story.date_live_on = (DateTime.parse this_date_live_on2) - 2.0
    @session_name = "Practice 1 Report"
    @session_name2 = "practice-1-report"    
    @story.headline = @session_name + " - "
    @story.abstract = @race_name + " GP - " + @session_name
    @story.filename = "/races/" + @race_name_file.downcase + "-gp-" + thisyear + "-" + @session_name2 + ".html"
    @story.name_slug = @race_name_file.downcase + "-gp-" + thisyear + "-" + @session_name2
    @story.author = "Dan Knutson"
    @story.save
    
    @story = Story.new
    @story.race_detail_id = @race_number
    @story.category_id = 1
    @story.ornament_id = 2
    @story.priority = 5
    @story.date_live_at = (DateTime.parse this_date_live_on2) - 2.0
    @story.date_live_on = (DateTime.parse this_date_live_on2) - 2.0
    @session_name = "Practice 2 Results"
    @session_name2 = "practice-2-results"    
    @story.headline = @session_name
    @story.abstract = @race_name + " GP - " + @session_name
    @story.filename = "/races/" + @race_name_file.downcase + "-gp-" + thisyear + "-" + @session_name2 + ".html"
    @story.name_slug = @race_name_file.downcase + "-gp-" + thisyear + "-" + @session_name2
    @story.author = "Mark Karp"
    @story.save
    
    @story = Story.new
    @story.race_detail_id = @race_number
    @story.category_id = 1
    @story.ornament_id = 2
    @story.priority = 6
    @story.date_live_at = (DateTime.parse this_date_live_on2) - 2.0
    @story.date_live_on = (DateTime.parse this_date_live_on2) - 2.0
    @session_name = "Friday Report"
    @session_name2 = "friday-report"    
    @story.headline = @session_name + " - "
    @story.abstract = @race_name + " GP - " + @session_name
    @story.filename = "/races/" + @race_name_file.downcase + "-gp-" + thisyear + "-" + @session_name2 + ".html"
    @story.name_slug = @race_name_file.downcase + "-gp-" + thisyear + "-" + @session_name2
    @story.author = "Dan Knutson"
    @story.save
    
    @story = Story.new
    @story.race_detail_id = @race_number
    @story.category_id = 1
    @story.ornament_id = 2
    @story.priority = 5
    @story.date_live_at = (DateTime.parse this_date_live_on2) - 2.0
    @story.date_live_on = (DateTime.parse this_date_live_on2) - 2.0
    @session_name = "Friday Team Quotes"
    @session_name2 = "friday-team-quotes"    
    @story.headline = @session_name
    @story.abstract = @race_name + " GP - " + @session_name
    @story.filename = "/races/" + @race_name_file.downcase + "-gp-" + thisyear + "-" + @session_name2 + ".html"
    @story.name_slug = @race_name_file.downcase + "-gp-" + thisyear + "-" + @session_name2
    @story.author = "Mark Karp"
    @story.save
    
    @story = Story.new
    @story.race_detail_id = @race_number
    @story.category_id = 1
    @story.ornament_id = 2
    @story.priority = 5
    @story.date_live_at = (DateTime.parse this_date_live_on2) - 2.0
    @story.date_live_on = (DateTime.parse this_date_live_on2) - 2.0
    @session_name = "Friday Press Conference"
    @session_name2 = "friday-press-conference"    
    @story.headline = @session_name
    @story.abstract = @race_name + " GP - " + @session_name
    @story.filename = "/races/" + @race_name_file.downcase + "-gp-" + thisyear + "-" + @session_name2 + ".html"
    @story.name_slug = @race_name_file.downcase + "-gp-" + thisyear + "-" + @session_name2
    @story.author = "Mark Karp"
    @story.save
    
    @story = Story.new
    @story.race_detail_id = @race_number
    @story.category_id = 1
    @story.ornament_id = 2
    @story.priority = 5
    @story.date_live_at = (DateTime.parse this_date_live_on2) - 2.0
    @story.date_live_on = (DateTime.parse this_date_live_on2) - 2.0
    @session_name = "Friday Photos"
    @session_name2 = "friday-photos"    
    @story.headline = @session_name
    @story.abstract = @race_name + " GP - " + @session_name
    @story.filename = "/races/" + @race_name_file.downcase + "-gp-" + thisyear + "-" + @session_name2 + ".html"
    @story.name_slug = @race_name_file.downcase + "-gp-" + thisyear + "-" + @session_name2
    @story.author = "Mark Karp"
    @story.save
    
    @story = Story.new
    @story.race_detail_id = @race_number
    @story.category_id = 1
    @story.ornament_id = 2
    @story.priority = 5
    @story.date_live_at = (DateTime.parse this_date_live_on2) - 1.0
    @story.date_live_on = (DateTime.parse this_date_live_on2) - 1.0
    @session_name = "Practice 3 Results"
    @session_name2 = "practice-3-results"    
    @story.headline = @session_name
    @story.abstract = @race_name + " GP - " + @session_name
    @story.filename = "/races/" + @race_name_file.downcase + "-gp-" + thisyear + "-" + @session_name2 + ".html"
    @story.name_slug = @race_name_file.downcase + "-gp-" + thisyear + "-" + @session_name2
    @story.author = "Mark Karp"
    @story.save
    
    @story = Story.new
    @story.race_detail_id = @race_number
    @story.category_id = 1
    @story.ornament_id = 2
    @story.priority = 5
    @story.date_live_at = (DateTime.parse this_date_live_on2) - 1.0
    @story.date_live_on = (DateTime.parse this_date_live_on2) - 1.0
    @session_name = "Practice 3 Report"
    @session_name2 = "practice-3-report"    
    @story.headline = @session_name + " - "
    @story.abstract = @race_name + " GP - " + @session_name
    @story.filename = "/races/" + @race_name_file.downcase + "-gp-" + thisyear + "-" + @session_name2 + ".html"
    @story.name_slug = @race_name_file.downcase + "-gp-" + thisyear + "-" + @session_name2
    @story.author = "Dan Knutson"
    @story.save
    
    @story = Story.new
    @story.race_detail_id = @race_number
    @story.category_id = 1
    @story.ornament_id = 2
    @story.priority = 5
    @story.date_live_at = (DateTime.parse this_date_live_on2) - 1.0
    @story.date_live_on = (DateTime.parse this_date_live_on2) - 1.0
    @session_name = "Qualifying Results"
    @session_name2 = "qualifying-results"    
    @story.headline = @session_name
    @story.abstract = @race_name + " GP - " + @session_name
    @story.filename = "/races/" + @race_name_file.downcase + "-gp-" + thisyear + "-" + @session_name2 + ".html"
    @story.name_slug = @race_name_file.downcase + "-gp-" + thisyear + "-" + @session_name2
    @story.author = "Mark Karp"
    @story.save
    
    @story = Story.new
    @story.race_detail_id = @race_number
    @story.category_id = 1
    @story.ornament_id = 2
    @story.priority = 6
    @story.date_live_at = (DateTime.parse this_date_live_on2) - 1.0
    @story.date_live_on = (DateTime.parse this_date_live_on2) - 1.0
    @session_name = "Qualifying Report"
    @session_name2 = "qualifying-report"    
    @story.headline = @session_name + " - "
    @story.abstract = @race_name + " GP - " + @session_name
    @story.filename = "/races/" + @race_name_file.downcase + "-gp-" + thisyear + "-" + @session_name2 + ".html"
    @story.name_slug = @race_name_file.downcase + "-gp-" + thisyear + "-" + @session_name2
    @story.author = "Dan Knutson"
    @story.save
    
    @story = Story.new
    @story.race_detail_id = @race_number
    @story.category_id = 1
    @story.ornament_id = 2
    @story.priority = 6
    @story.date_live_at = (DateTime.parse this_date_live_on2) - 1.0
    @story.date_live_on = (DateTime.parse this_date_live_on2) - 1.0
    @session_name = "Sprint Race Results"
    @session_name2 = "sprint-race-results"    
    @story.headline = @session_name + " - "
    @story.abstract = @race_name + " GP - " + @session_name
    @story.filename = "/races/" + @race_name_file.downcase + "-gp-" + thisyear + "-" + @session_name2 + ".html"
    @story.name_slug = @race_name_file.downcase + "-gp-" + thisyear + "-" + @session_name2
    @story.author = "Mark Karp"
    @story.save
    
    @story = Story.new
    @story.race_detail_id = @race_number
    @story.category_id = 1
    @story.ornament_id = 2
    @story.priority = 5
    @story.date_live_at = (DateTime.parse this_date_live_on2) - 1.0
    @story.date_live_on = (DateTime.parse this_date_live_on2) - 1.0
    @session_name = "Saturday Team Quotes"
    @session_name2 = "saturday-team-quotes"    
    @story.headline = @session_name
    @story.abstract = @race_name + " GP - " + @session_name
    @story.filename = "/races/" + @race_name_file.downcase + "-gp-" + thisyear + "-" + @session_name2 + ".html"
    @story.name_slug = @race_name_file.downcase + "-gp-" + thisyear + "-" + @session_name2
    @story.author = "Mark Karp"
    @story.save
    
    @story = Story.new
    @story.race_detail_id = @race_number
    @story.category_id = 1
    @story.ornament_id = 2
    @story.priority = 5
    @story.date_live_at = (DateTime.parse this_date_live_on2) - 1.0
    @story.date_live_on = (DateTime.parse this_date_live_on2) - 1.0
    @session_name = "Saturday Press Conference"
    @session_name2 = "saturday-press-conference"    
    @story.headline = @session_name
    @story.abstract = @race_name + " GP - " + @session_name
    @story.filename = "/races/" + @race_name_file.downcase + "-gp-" + thisyear + "-" + @session_name2 + ".html"
    @story.name_slug = @race_name_file.downcase + "-gp-" + thisyear + "-" + @session_name2
    @story.author = "Mark Karp"
    @story.save
    
    @story = Story.new
    @story.race_detail_id = @race_number
    @story.category_id = 1
    @story.ornament_id = 2
    @story.priority = 5
    @story.date_live_at = (DateTime.parse this_date_live_on2) - 1.0
    @story.date_live_on = (DateTime.parse this_date_live_on2) - 1.0
    @session_name = "Saturday Post-qualifying Press Conference"
    @session_name2 = "saturday-post-qualifying-press-conference"    
    @story.headline = @session_name
    @story.abstract = @race_name + " GP - " + @session_name
    @story.filename = "/races/" + @race_name_file.downcase + "-gp-" + thisyear + "-" + @session_name2 + ".html"
    @story.name_slug = @race_name_file.downcase + "-gp-" + thisyear + "-" + @session_name2
    @story.author = "Mark Karp"
    @story.save
    
    @story = Story.new
    @story.race_detail_id = @race_number
    @story.category_id = 1
    @story.ornament_id = 2
    @story.priority = 5
    @story.date_live_at = (DateTime.parse this_date_live_on2) - 1.0
    @story.date_live_on = (DateTime.parse this_date_live_on2) - 1.0
    @session_name = "Saturday Sprint Race Press Conference"
    @session_name2 = "saturday-post-sprint-race-press-conference"    
    @story.headline = @session_name
    @story.abstract = @race_name + " GP - " + @session_name
    @story.filename = "/races/" + @race_name_file.downcase + "-gp-" + thisyear + "-" + @session_name2 + ".html"
    @story.name_slug = @race_name_file.downcase + "-gp-" + thisyear + "-" + @session_name2
    @story.author = "Mark Karp"
    @story.save
    
    @story = Story.new
    @story.race_detail_id = @race_number
    @story.category_id = 1
    @story.ornament_id = 2
    @story.priority = 5
    @story.date_live_at = (DateTime.parse this_date_live_on2) - 1.0
    @story.date_live_on = (DateTime.parse this_date_live_on2) - 1.0
    @session_name = "Saturday Photos"
    @session_name2 = "saturday-photos"    
    @story.headline = @session_name
    @story.abstract = @race_name + " GP - " + @session_name
    @story.filename = "/races/" + @race_name_file.downcase + "-gp-" + thisyear + "-" + @session_name2 + ".html"
    @story.name_slug = @race_name_file.downcase + "-gp-" + thisyear + "-" + @session_name2
    @story.author = "Mark Karp"
    @story.save
    
    @story = Story.new
    @story.race_detail_id = @race_number
    @story.category_id = 1
    @story.ornament_id = 2
    @story.priority = 5
    @story.date_live_at = DateTime.parse this_date_live_on2
    @story.date_live_on = DateTime.parse this_date_live_on2
    @session_name = "Race Results"
    @session_name2 = "race-results"    
    @story.headline = @session_name
    @story.abstract = @race_name + " GP - " + @session_name
    @story.filename = "/races/" + @race_name_file.downcase + "-gp-" + thisyear + "-" + @session_name2 + ".html"
    @story.name_slug = @race_name_file.downcase + "-gp-" + thisyear + "-" + @session_name2
    @story.author = "Mark Karp"
    @story.save
    
    @story = Story.new
    @story.race_detail_id = @race_number
    @story.category_id = 1
    @story.ornament_id = 2
    @story.priority = 5
    @story.date_live_at = DateTime.parse this_date_live_on2
    @story.date_live_on = DateTime.parse this_date_live_on2
    @session_name = "Sunday Team Quotes"
    @session_name2 = "sunday-team-quotes"    
    @story.headline = @session_name
    @story.abstract = @race_name + " GP - " + @session_name
    @story.filename = "/races/" + @race_name_file.downcase + "-gp-" + thisyear + "-" + @session_name2 + ".html"
    @story.name_slug = @race_name_file.downcase + "-gp-" + thisyear + "-" + @session_name2
    @story.author = "Mark Karp"
    @story.save
    
    @story = Story.new
    @story.race_detail_id = @race_number
    @story.category_id = 1
    @story.ornament_id = 2
    @story.priority = 5
    @story.date_live_at = DateTime.parse this_date_live_on2
    @story.date_live_on = DateTime.parse this_date_live_on2
    @session_name = "Sunday Press Conference"
    @session_name2 = "sunday-press-conference"    
    @story.headline = @session_name
    @story.abstract = @race_name + " GP - " + @session_name
    @story.filename = "/races/" + @race_name_file.downcase + "-gp-" + thisyear + "-" + @session_name2 + ".html"
    @story.name_slug = @race_name_file.downcase + "-gp-" + thisyear + "-" + @session_name2
    @story.author = "Mark Karp"
    @story.save
    
    @story = Story.new
    @story.race_detail_id = @race_number
    @story.category_id = 1
    @story.ornament_id = 2
    @story.priority = 5
    @story.date_live_at = DateTime.parse this_date_live_on2
    @story.date_live_on = DateTime.parse this_date_live_on2
    @session_name = "Sunday Photos"
    @session_name2 = "sunday-photos"    
    @story.headline = @session_name
    @story.abstract = @race_name + " GP - " + @session_name
    @story.filename = "/races/" + @race_name_file.downcase + "-gp-" + thisyear + "-" + @session_name2 + ".html"
    @story.name_slug = @race_name_file.downcase + "-gp-" + thisyear + "-" + @session_name2
    @story.author = "Mark Karp"
    @story.save
    
    @story = Story.new
    @story.race_detail_id = @race_number
    @story.category_id = 1
    @story.ornament_id = 2
    @story.priority = 6
    @story.date_live_at = DateTime.parse this_date_live_on2
    @story.date_live_on = DateTime.parse this_date_live_on2
    @session_name = "Race Notes"
    @session_name2 = "race-notes"    
    @story.headline = @session_name + " - "
    @story.abstract = @race_name + " GP - " + @session_name
    @story.filename = "/races/" + @race_name_file.downcase + "-gp-" + thisyear + "-" + @session_name2 + ".html"
    @story.name_slug = @race_name_file.downcase + "-gp-" + thisyear + "-" + @session_name2
    @story.author = "Mark Karp"
    @story.save
    
    @story = Story.new
    @story.race_detail_id = @race_number
    @story.category_id = 1
    @story.ornament_id = 2
    @story.priority = 6
    @story.date_live_at = (DateTime.parse this_date_live_on2) + 1.0
    @story.date_live_on = (DateTime.parse this_date_live_on2) + 1.0
    @session_name = "Race Analysis"
    @session_name2 = "race-analysis"    
    @story.headline = @session_name + " - "
    @story.abstract = @race_name + " GP - " + @session_name
    @story.filename = "/races/" + @race_name_file.downcase + "-gp-" + thisyear + "-" + @session_name2 + ".html"
    @story.name_slug = @race_name_file.downcase + "-gp-" + thisyear + "-" + @session_name2
    @story.author = "Dan Knutson"
    @story.save
    
    
    
    
    
  end
  
  
  def index
    @current_user = current_user.first_name + " " + current_user.last_name
    @current_race = CurrentRace.first
    @race_number = @current_race.race_number
    @race_detail = RaceDetail.find(@race_number)


    @current_user_race_description = "(" +  @race_number.to_s + " - " + @race_detail.race_name + ", " + "/race/" + @race_detail.race_name.parameterize.downcase + ")"

  end
  
  
end
