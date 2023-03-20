class ProductionSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :genre, :budget, :image, :director
  has_many :crew_members
end
