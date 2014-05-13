class NotificationMailer < ActionMailer::Base
  
  default from: "svoe@evestudio.com.ua"

  def signed_up(petition)
    @petition = petition
    @petition_count = Petition.count
    mail(:to => petition.email,
         :subject => "Дякуємо за підтримку!")
  end

end
