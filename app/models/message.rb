class Message < ActiveRecord::Base
  attr_accessible :body, :date_read, :date_sent, :receiver_id, :sender_id, :subject
  belongs_to :senders, :class_name => "User", :foreign_key => "user_id"
  belongs_to :receivers, :class_name => "User", :foreign_key => "user_id"

  has_many :sent_messages, :class_name => "Message", :foreign_key => :sender_id
  has_many :recieved_messages, :class_name => "Message", :foreign_key => :receiver_id
end
