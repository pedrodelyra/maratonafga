class StaticPagesController < ApplicationController
  def index
  	@next_contests = []
  	all_contests = Contest.all 
  	all_contests.each do |contest| 
  		if contest.end > DateTime.now
  			@next_contests << contest
  		end
  	end
  end

  def register_user()
  	contest = Contest.find(params["contest_id"])
    unless contest.user_emails.include? current_user.email
      contest.user_emails << current_user.email
      if contest.save
        flash[:notice] = "Você se inscreveu no(a) " + contest.name + " com Sucesso!"
      end
    end
  	redirect_to action: "index"
  end
end
