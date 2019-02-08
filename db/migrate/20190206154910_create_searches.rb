class CreateSearches < ActiveRecord::Migration[5.2]
  def change
    create_table :searches do |t|
      t.string :keywords
      t.string :p_id
      t.string :student_name
      t.string :student_id
      t.string :supervisor_name
      t.string :moderator_name

      t.timestamps
    end
  end
end
