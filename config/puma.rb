rails_env = ENV['RAILS_ENV'] || 'development'

threads 4,4

bind  "unix:///tmp/chat-nss-puma.socket"
pidfile "/tmp/pid_chat_nss"

activate_control_app
