class Clothe < ApplicationRecord
    belongs_to :auhthor, class_name: "auhthor", foreign_key: "auhthor_id"
end
