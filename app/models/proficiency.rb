class Proficiency < ActiveRecord::Base
  belongs_to :user
  belongs_to :skill
  after_initialize :init

  def init
    self.rating ||= 0
  end
end
