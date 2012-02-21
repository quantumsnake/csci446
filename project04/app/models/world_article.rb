class WorldArticle < ActiveRecord::Base
  validates_presence_of :title, :author, :body
end
