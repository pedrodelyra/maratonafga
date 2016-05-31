class StaticPagesController < ApplicationController
  def index
  	@next_contests = []
  	all_contests = Contest.all 
  	all_contests.each do |contest| 
  		puts contest.start , DateTime.now
  		if contest.start > DateTime.now
  			@next_contests << contest
  		end
  	end
  end
end
