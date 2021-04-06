class StaticPagesController < ApplicationController
  def home
  end
  def about
  end
  def contact
  end
  def send_message
    ContactMailer.with(params).contact.deliver_now
  end

end
