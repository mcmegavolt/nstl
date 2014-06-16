class Petition < ActiveRecord::Base
	
	after_create :notify_user

	validates_presence_of :first_name, :last_name, :email
	validates_uniqueness_of :email, :on => :create, :message => 'Один email не може бути використаний більше одного разу.'

	def notify_user
		# NotificationMailer.delay.signed_up(self)
		NotificationMailer.signed_up(self).deliver
	end

end
