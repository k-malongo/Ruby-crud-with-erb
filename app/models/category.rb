class Category < ActiveRecord::Base
    has_many :posts

    # post.author / read the author that the post belongs to
    # post.author = / set the author that post belongs to
    # post.build_author()
    # post.create_author()/ creates and persists to db
    has_many :authors, through: :posts

end