class Session

  require 'autoinc'
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Autoinc

  acts_as_api
  include SessionTemplates

  field :user_name,        type: String
  field :user_avatar,      type: Integer

  increments :code
end
