class RenameTeamscolumns < ActiveRecord::Migration
  def change
	change_table :teams do |t|
		t.rename :captain_email, :captains_email
		t.rename :captain_name, :captains_name
	end  	
  end
end
