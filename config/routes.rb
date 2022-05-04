Rails.application.routes.draw do
  resources :current_races
  get 'display/photo'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  
  
  
  resources :legacy_photos
  resources :stories
  resources :race_details
  
  devise_for :users
  
  get "news/index"
  get "news/show"
  get "races/index"
  get "races/standings"
  get "races/overview"
   get "races/show"
  get "features/index"
  get "features/show"
  get "columns/index"
  get "columns/show"
  get "drivers/index"
  get "drivers/show"
  get "people/index"
  get "people/show"
  get "constructors/index"
  get "constructors/show"
  get "circuits/index"
  get "circuits/show"
  get "sponsors/index"
  get "sponsors/show"
  get "engines/index"
  get "engines/show"
  get "fuel/index"
  get "fuel/show"
  get "tyres/index"
  get "tyres/show"
  get "race_archives/index"
  get "race_archives/show"
  get "pages/index"
  get "pages/show"
  get "pages/encyclopedia"

  match "import", to: "import#index", via: :get
  match "stories", to: "stories#index", via: :get
  match "news", to:  "news#index", via: :get
  match "races", to:  "races#overview", via: :get
  match 'races/standings', to:  'races#standings', via: :get 
  match 'races/overview', to:  'races#overview', via: :get 
  match 'races/index', to:  'races#index', via: :get 
  match "features", to:  "features#index", via: :get
  match "columns", to:  "columns#index", via: :get
  match "drivers", to:  "drivers#index", via: :get
  match "people", to:  "people#index", via: :get
  match "constructors", to:  "constructors#index", via: :get
  match "circuits", to:  "circuits#index", via: :get
  match "sponsors", to:  "sponsors#index", via: :get
  match "engines", to:  "engines#index", via: :get
  match "fuel", to:  "fuel#index", via: :get
  match "tyres", to:  "tyres#index", via: :get
  match "race-archives", to:  "race_archives#index", via: :get
  match "pages", to:  "pages#index", via: :get

  match "encyclopedia", to: "pages#encyclopedia", via: :get
  match "privacy", to: "pages#privacy", via: :get
  match "terms", to: "pages#terms", via: :get
  match "copyright", to: "pages#copyright", via: :get
  

  match '/ns/:story', to:  'news#showlegacy', via: :get #, :as => :showlegacy
  match '/gpe/drv-:story', to:  'drivers#showlegacy', via: :get #, :as => :showlegacy
   match '/gpe/cref-:story', to:  'people#showlegacy', via: :get #, :as => :showlegacy
   match '/gpe/con-:story', to:  'constructors#showlegacy', via: :get #, :as => :showlegacy
   match '/gpe/cir-:story', to:  'circuits#showlegacy', via: :get #, :as => :showlegacy
   match '/gpe/spon-:story', to:  'sponsors#showlegacy', via: :get #, :as => :showlegacy
   match '/gpe/eng-:story', to:  'engines#showlegacy', via: :get #, :as => :showlegacy
   match '/gpe/fue-:story', to:  'fuel#showlegacy', via: :get #, :as => :showlegacy
   match '/gpe/tir-:story', to:  'tyres#showlegacy', via: :get #, :as => :showlegacy
   match '/gpe/rr:story', to:  'race_archives#showlegacy', via: :get #, :as => :showlegacy

   # match '/stories/new-news-story', 'stories#newsstory', via :get
  # get 'stories/newsstory'
  get "manage/newnewsstory" => "manage#newnewsstory"
  get "manage/createracepages" => "manage#createracepages"
  get "manage/create2019racedetails" => "manage#create2019racedetails"
   match "manage", to: "manage#index", via: :get
 
  match '/news/:story.html', to:  'news#show', via: :get #, :as => :show
  match '/races/:story.html', to:  'races#show', via: :get
  # features
  match '/features/:column_type/:story.html', to:  'features#show', via: :get
  match '/features/:story.html', to:  'features#show', via: :get
  # columns
  match '/columns/:column_type/:story.html', to:  'columns#show', via: :get
  match '/columns/:story.html', to:  'columns#show', via: :get
  # gpe
  match '/drivers/:story.html', to:  'drivers#show', via: :get
  match '/people/:story.html', to:  'people#show', via: :get
  match '/constructors/:story.html', to:  'constructors#show', via: :get
  match '/circuits/:story.html', to:  'circuits#show', via: :get
  match '/sponsors/:story.html', to:  'sponsors#show', via: :get
  match '/engines/:story.html', to:  'engines#show', via: :get
  match '/fuel/:story.html', to:  'fuel#show', via: :get
  match '/tyres/:story.html', to:  'tyres#show', via: :get
  match '/race-archives/:story.html', to:  'race_archives#show', via: :get
  match '/pages/:story.html', to:  'pages#show', via: :get

  get 'home/carrera'
  get 'home/huski'
  get 'home/estrellagalicia'


  match '/rss.xml', to:  'news#feed', via: :get
  match '/ft/rss.xml', to:  'features#feed', via: :get
  match '/features/rss.xml', to:  'features#feed', via: :get








  get 'import/convert'
  get 'import/convert_bad'
  get 'import/do_categories'
  get 'import/race_info'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  # get 'feed' => 'news#feed'

  root to: 'home#index'


  
  
  
end
