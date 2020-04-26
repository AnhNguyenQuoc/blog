class Article < ApplicationRecord
  validates_presence_of :title, :description, :link
end
