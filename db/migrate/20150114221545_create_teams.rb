class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :team_name
      t.string :captain_email
      t.string :captain_name

      t.timestamps    	
    end
  end
end
