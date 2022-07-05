class Author < ApplicationRecord
    has_many :book
    has_many :clothe
    has_many :novel
end
