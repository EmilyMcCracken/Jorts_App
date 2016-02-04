# namespace :deleteAct do
	desc "Destroy all activites past their end time"
	task :endact => :environment do
		@activity = Activity.all
		@activity.each do |act|
			if act.end_time < Time.now
				puts "Deleting #{act.name}"
				act.destroy
			end
		end
	end
# end