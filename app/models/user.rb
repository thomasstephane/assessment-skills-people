class User < ActiveRecord::Base
  has_many :proficiencies
  has_many :skills, :through => :proficiencies
  validates :name, presence: true

  def proficiency_for(skill)
    proficiency = Proficiency.find_by_skill_id_and_user_id(skill.id, self.id)
    proficiency.rating
  end
  
  def set_proficiency_for(skill, rating)
    proficiency = Proficiency.find_by_skill_id_and_user_id(skill.id, self.id)
    proficiency.update_attributes(:rating => rating)
  end
end
