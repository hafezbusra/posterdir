class Search < ApplicationRecord

    def search_posters

        posters = FypPoster.all
        posters = FypPoster.where(["p_title LIKE ?", "%#{keywords}%"]) if keywords.present?
        posters = FypPoster.where(["p_id LIKE ?", "%#{p_id}%"]) if p_id.present?
        posters = FypPoster.where(["student_id LIKE ?", "%#{student_id}%"]) if student_id.present?
        posters = FypPoster.where(["student_name LIKE ?", "%#{student_name}%"]) if student_name.present?
        posters = FypPoster.where(["moderator_name LIKE ?", "%#{moderator_name}%"]) if moderator_name.present?
        posters = FypPoster.where(["supervisor_name LIKE ?", "%#{supervisor_name}%"]) if supervisor_name.present?

        return posters
    end

end
