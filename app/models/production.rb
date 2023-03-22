class Production < ApplicationRecord
  has_many :crew_members, dependent: :destroy

  validates :title, presence: true
  validate :no_more_musicals

  # Custom Validations
  def no_more_musicals
    if genre.downcase == 'musical'
      errors.add(:genre, 'Sorry, no more musicals!')
    end
  end

  def title_director
    "#{title}: #{director}"
  end
end
