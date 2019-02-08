class CreateFypPosters < ActiveRecord::Migration[5.2]
  def change
    create_table :fyp_posters do |t|
      t.string :p_id
      t.string :p_title
      t.string :student_name
      t.string :student_id
      t.string :supervisor_name
      t.string :moderator_name
      t.string :poster_img

      t.timestamps
    end
  end
end
