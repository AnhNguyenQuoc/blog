class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :link, :created_at
end
