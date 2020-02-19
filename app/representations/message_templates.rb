module MessageTemplates
  extend ActiveSupport::Concern

  included do
    api_accessible :general do |t|
      t.add lambda { |w|
        w.id.to_s
      }, as: :id
      t.add :message
      t.add :user_name
      t.add :user_avatar
      t.add :date
      t.add :type
      t.add :code
    end
  end
end
