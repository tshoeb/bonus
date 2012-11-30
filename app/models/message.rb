class Message < ActiveRecord::Base
  attr_accessible :body, :date_read, :date_sent, :receiver_id, :sender_id, :subject
end
