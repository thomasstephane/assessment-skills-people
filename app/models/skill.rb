class Skill < ActiveRecord::Base
  has_many :proficiencies
  has_many :users, :through => :proficiencies

  validates :name, uniqueness: true

  def user_with_proficiency(rating)
    user_id = self.proficiencies.where(rating: rating)[0].user_id
    User.find(user_id)
  end
end
