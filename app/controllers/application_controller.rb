class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  before_action :set_meta_tag_variables

  def set_meta_tag_variables
 
      @site_title = "Latest Formula 1 Breaking News - Grandprix.com"
      @site_description = "Get the latest Formula 1 news, features, photos, results, history on drivers and teams in our encyclopedia - all on Grandprix.com"
      @site_keywords = "formula 1, F1, f1, formula1, inside f1, grandprix.com, insidef1.com, formula one, F1 racing, FIA, racingcars, racing, motorsport, autoracing, autos, grand prix, grandprix, cars, michael schumacher, fernando alonso, kimi raikkonen, schumacher, felipe massa, lewis hamilton, nico rosberg, jenson button, sebastian vettel, nico hulkenberg, vitaly petrov, kamui kobayashi, adrian sutil, vitantonio liuzzi, robert kubica, jaime alguesuari, mark webber, heikki kovalainen, jarno trulli, timo glock, lucas di grassi, bruno senna, sebastien buemi, karun chandhok, giancarlo fisichella, button, rubens barrichello, juan pablo montoya, nick heidfeld, pedro de la rosa, trulli, david coulthard, jaques villeneuve, gilles villeneuve, webber, kubica, rosberg, klien, liuzzi, scott speed, monteiro, albers, sato, ide, hamilton, paffett, kovalainen, zonta, piquet, badoer, rossiter, glock, vettel, montagny, doornbos, ammermuller, wurz, karthikeyan, nakajima, sutil, winkelhock, fauzy, valles, davidson, yamamoto, hakkinen, hill, mansell, alesi, verstappen, mclaren, williams, ferrari, honda, prost, renault, toyota, red bull, toro rosso, spyker, super aguri, benetton, minardi, sauber, senna, monte carlo, monaco, silverstone, spa, hockenheim, san marino, monza, magny cours, indianapolis, malaysia, bahrain, barcelona, montreal, hungary, turkey, japan, china, singapore, korea, bahrain, abu dhabi"
 
  end
  




end

def create_permalink(string)
  string.gsub(/([^ a-zA-Z0-9_.-]+)/n) do
    '%' + $1.unpack('H2' * $1.size).join('%').upcase
  end.tr(' ', '-').downcase
end

