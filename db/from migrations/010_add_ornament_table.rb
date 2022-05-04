class AddOrnamentTable < ActiveRecord::Migration[5.1]
  def self.up
    create_table :ornaments do |t|
      t.string :name
      t.string :filename

      t.timestamps
    end
    
    
    Ornament.create( :name => 'News', :filename => 'news-template')
    Ornament.create( :name => 'Race', :filename => 'race-template')
    Ornament.create( :name => 'Features', :filename => 'features-template')
    Ornament.create( :name => 'Globetrotter', :filename => 'features-globetrotter-template')
    Ornament.create( :name => 'Globetrotter', :filename => 'features-globetrotter-template')
    Ornament.create( :name => 'Eff One', :filename => 'features-effone-template')
    Ornament.create( :name => 'The Mole', :filename => 'features-themole-template')
    Ornament.create( :name => 'Maurice Hamilton', :filename => 'features-mauricehamilton-template')
    Ornament.create( :name => 'GPE Drivers', :filename => 'gpe-drivers-template')
    Ornament.create( :name => 'GPE People', :filename => 'gpe-people-template')
    Ornament.create( :name => 'GPE Constructors', :filename => 'gpe-constructors-template')
    Ornament.create( :name => 'GPE Circuits', :filename => 'gpe-circuits-template')
    Ornament.create( :name => 'GPE Sponsors', :filename => 'gpe-sponsors-template')
    Ornament.create( :name => 'GPE Engines', :filename => 'gpe-engines-template')
    Ornament.create( :name => 'GPE Fuel', :filename => 'gpe-fuel-template')
    Ornament.create( :name => 'GPE Tyres', :filename => 'gpe-tyres-template')
    Ornament.create( :name => 'GPE Races', :filename => 'gpe-races-template')
    Ornament.create( :name => 'Generic', :filename => 'generic-template')
    
    
    add_column :stories, :ornament_id, :integer
    
    @stories = Story.all
    
    @stories.each do |story|
      story.ornament_id = story.template_id
      puts "#{story.id}.\n"
      story.save
    end
    
    remove_column :stories, :template_id
    drop_table :templates
  end

  def self.down
    drop_table :ornaments
  end
end
