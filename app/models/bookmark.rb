class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, length: { minimum: 6}
  validates :list, uniqueness: { scope: :movie} 
  # couple. :list, uniqueness: { scope: :movie} 
  # ensure each bookmark is unique for a given movie/list. I.e. a single movie CANNOT be bookmarked to the same list twice. 
end
