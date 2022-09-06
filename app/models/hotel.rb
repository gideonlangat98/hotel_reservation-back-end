class Hotel < ActiveRecord::Base
    has_many :customer_reviews
end