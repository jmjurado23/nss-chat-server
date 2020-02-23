module SessionTemplates
  extend ActiveSupport::Concern

  included do
    api_accessible :general do |t|
      t.add lambda { |w|
        w.id.to_s
      }, as: :id
      t.add :user_name
      t.add :user_avatar
      t.add :created_at
    end
  end
end
