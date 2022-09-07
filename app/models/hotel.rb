class Hotel < ActiveRecord::Base
    has_many :reviews
end