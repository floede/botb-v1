class Team < ActiveRecord::Base

	validates_presence_of :team_name
	validates_presence_of :captains_email 
	validates_presence_of :captains_name 
	validates_format_of :captains_email, 
		:with => /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i	

	def subscribe
		mailchimp = Gibbon::API.new(Rails.application.secrets.mailchimp_api_key)
		result = mailchimp.lists.subscribe({
			:id => Rails.application.secrets.mailchimp_list_id,
			:email => {:email => self.captains_email},
			:double_optin => false,
			:update_existing => true,
			:send_welcome => true
			})
		Rails.logger.info("Subscribed #{self.captains_email} to MailChimp") if result
	end
end
