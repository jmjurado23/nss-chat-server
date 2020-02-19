class Wallpaper
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Autoinc

  acts_as_api
  include MessageTemplate

  # constants

  field :message,          type: String
  field :date,             type: String
  field :user_name,        type: String
  field :user_avatar,      type: Integer
  field :type,             type: String

  increments :code

  validates_presence_of :message
  validates_presence_of :date
  validates_presence_of :user_name
  validates_presence_of :user_avatar
  validates_presence_of :type
end
