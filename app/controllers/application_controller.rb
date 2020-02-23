class ApplicationController < ActionController::Base
  self.responder = ActsAsApi::Responder
end
