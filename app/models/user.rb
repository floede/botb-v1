class User < ActiveRecord::Base

	#column :nick, :string
	#column :email, :string
	#column :games, :text

	validates_presence_of :nick
	validates_presence_of :email 
	validates_presence_of :game 
	validates_format_of :email, 
		:with => /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i	
end
