class Author < ActiveRecord::Base
    has_many :posts
    # methods that we get:
    # author.posts
    # author.posts << ()
    # author.posts.build(hash of attr)
    has_many :categories, through: :posts
end