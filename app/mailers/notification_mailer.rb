class NotificationMailer < ActionMailer::Base
  default from: "no-reply@xn--b1ayh2f.xn--j1amh"

  def signed_up(petition)
    @petition = petition
    mail(:to => petition.email,
         :subject => "Дякуємо за підтримку!")
  end

end
