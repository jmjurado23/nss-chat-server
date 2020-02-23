class Message
  require 'autoinc'
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Autoinc

  acts_as_api
  include MessageTemplates

  field :message,          type: String
  field :date,             type: String
  field :user_name,        type: String
  field :user_avatar,      type: String
  field :session_id,       type: String
  field :type,             type: String
  field :code,             type: Integer

  increments :code

  validates_presence_of :message
  validates_presence_of :date
  validates_presence_of :user_name
  validates_presence_of :user_avatar
  validates_presence_of :type
  validates_presence_of :session_id
end
