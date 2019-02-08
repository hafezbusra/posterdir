class FypPoster < ApplicationRecord

    def self.search(search)
        if search
            where(["p_title LIKE ?","%#{search}%"])
        else
            all
        end
    end

end
