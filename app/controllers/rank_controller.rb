class RankController < ApplicationController
    def rank
        @marks=Mark.limit(2)
    end
end
