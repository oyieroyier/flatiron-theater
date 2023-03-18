class ProductionSerializer < ActiveModel::Serializer
  attributes :title, :genre, :budget, :image, :director
end
