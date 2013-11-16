namespace :el_presente_perfecto do
  desc "Test task"
  task :test => :environment do
    Rails.logger.info( "It is a test" )
  end
end
