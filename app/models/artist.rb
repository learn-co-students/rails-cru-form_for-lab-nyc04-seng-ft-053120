class Artist < ApplicationRecord
    has_many :songs
end

# artist ----< songs >---- genre
