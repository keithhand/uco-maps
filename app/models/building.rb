class Building < ApplicationRecord

    # Would work if UCO's address system was unique and not stupid
    #geocoded_by :address
    #after_validation :geocode

end
