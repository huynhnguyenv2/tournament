class AddCompetitionRefToGroups < ActiveRecord::Migration[5.2]
  def change
    add_reference :groups, :competition, foreign_key: true
  end
end
