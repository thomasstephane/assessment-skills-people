class CreateProficiencies < ActiveRecord::Migration
  def change
    create_table :proficiencies do |t|
      t.integer :skill_id, :user_id, :rating
    end
  end
end
