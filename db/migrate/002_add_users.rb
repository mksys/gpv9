class AddUsers < ActiveRecord::Migration[5.1]
  def self.up
    # user1 = User.create( :first_name => 'Mark',
                              # :last_name => 'Karp',
                              # :email => 'mk@grandprix.com',
                              # :password => 'niki',
                              # :password_confirmation => 'niki')
    User.create!(first_name: "Mark", last_name: "Karp", email: "mk@grandprix.com", password: "foIt4UbO")
    User.create!(first_name: "Luis", last_name: "Vasconcelos", email: "luis.vasconcelos@formula-press.com", password: "Eros7frigid")
    User.create!(first_name: "Matthew", last_name: "Karp", email: "mhk@worldsquared.com", password: "carry71myth")
    User.create!(first_name: "Dan", last_name: "Knutson", email: "DKTR34@gmail.com", password: "snop675woozy")





  end

  def self.down
  end
end
