class Show < ActiveRecord::Base
    def self.highest_rating
        Show.maximum(:rating)
    end

    def self.most_popular_show
        # highest_tv_rating = self.
        Show.where(rating: self.highest_rating).take
    end

    def self.lowest_rating
        Show.minimum(:rating)
    end

    def self.least_popular_show
        self.where(rating: self.lowest_rating).take
    end

    def self.ratings_sum
        self.sum(:rating)
    end

    def self.shows_by_alphabetical_order
        Show.order(:name)
    end

    def self.popular_shows
        self.where("rating >= ?", 5)
    end




end