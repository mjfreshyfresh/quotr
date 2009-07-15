# See more at: http://masonbrowne.info/wp-content/uploads/2008/03/deploy.rb
set :application, "gab"
set :scm, "git"
set :repository, "git@github.com:mjfreshyfresh/gab.git"
set :user, "deploy"
set :deploy_to, "/home/#{user}/apps/#{application}"
set :keep_releases, 2
set :use_sudo, false
after "deploy:update", "deploy:cleanup" # needed for keep release
role :web, "76.74.155.110"
role :app, "76.74.155.110"
role :db,  "76.74.155.110"

namespace :deploy do

  desc "The restart command."  
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{current_release}/tmp/restart.txt"
  end  
  
end