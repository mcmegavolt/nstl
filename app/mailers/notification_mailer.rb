class NotificationMailer < ActionMailer::Base
  default from: "no-reply@evestudio.com.ua"

  def signed_up(petition)
    @petition = petition
    mail(:to => petition.email,
         :subject => "Дякуємо за підтримку!")
  end

end
