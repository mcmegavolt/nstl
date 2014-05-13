class Petition < ActiveRecord::Base
	
	after_create :notify_user

	validates_presence_of :first_name, :last_name, :email
	validates_uniqueness_of :email

	def notify_user
		NotificationMailer.delay.signed_up(self)
	end

end
