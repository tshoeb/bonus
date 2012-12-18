class MessageMailer < ActionMailer::Base
   default from: "app.design67274@gmail.com"

  def new_message_msg(message)
  	@message = message
  	mail(:to => @message.sender_id, :subject => @message.subject)
  end
end
