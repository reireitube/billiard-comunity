class Home < ApplicationRecord
#     %i(
#     arrival_date(1i) arrival_date(2i) arrival_date(3i)
#     published_at(1i) published_at(2i) published_at(3i) published_at(4i) published_at(5i)
#   )

    def self.search(search)
        return Home.all unless search
        Home.where(['pool_hall LIKE ?',"%#{search}%"])
    end


end
