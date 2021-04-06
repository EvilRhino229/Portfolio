class ContactMailer < ApplicationMailer
   def contact
    @name = params[:name]
    @email = params[:email]
    @number = params[:number]
    @content = params[:content]
    mail(to: "Timkep1@yahoo.com", subject: "Message from your website")
  end
end
