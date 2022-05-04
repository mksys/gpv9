class AddTemplateNames < ActiveRecord::Migration[5.1]
  def self.up
    Template.create( :name => 'News', :filename => 'news-template')
    Template.create( :name => 'Race', :filename => 'race-template')
    Template.create( :name => 'Features', :filename => 'features-template')
    Template.create( :name => 'Globetrotter', :filename => 'features-globetrotter-template')
    Template.create( :name => 'Globetrotter', :filename => 'features-globetrotter-template')
    Template.create( :name => 'Eff One', :filename => 'features-effone-template')
    Template.create( :name => 'The Mole', :filename => 'features-themole-template')
    Template.create( :name => 'Maurice Hamilton', :filename => 'features-mauricehamilton-template')
    Template.create( :name => 'GPE Drivers', :filename => 'gpe-drivers-template')
    Template.create( :name => 'GPE People', :filename => 'gpe-people-template')
    Template.create( :name => 'GPE Constructors', :filename => 'gpe-constructors-template')
    Template.create( :name => 'GPE Circuits', :filename => 'gpe-circuits-template')
    Template.create( :name => 'GPE Sponsors', :filename => 'gpe-sponsors-template')
    Template.create( :name => 'GPE Engines', :filename => 'gpe-engines-template')
    Template.create( :name => 'GPE Fuel', :filename => 'gpe-fuel-template')
    Template.create( :name => 'GPE Tyres', :filename => 'gpe-tyres-template')
    Template.create( :name => 'GPE Races', :filename => 'gpe-races-template')
    Template.create( :name => 'Generic', :filename => 'generic-template')
    
    
  end

  def self.down
  end
end
