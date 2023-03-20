class CrewMemberSerializer < ActiveModel::Serializer
  attributes :name, :job_title
  belongs_to :production
end
