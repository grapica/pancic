
set :application, "pancic"
set :repository,  "http://github.com/grapica/pancic.git"
server "ssh.railscluster.nl", :app, :web, :db, :primary => true


set :user, "pancic"
set :use_sudo, false
set :deploy_to, "/home/#{user}/web_root"  


set :scm, :git
set :branch, "master"
set :checkout, "export"
set :git_shallow_clone, 1
set :scm_verbose, true




ssh_options[:port] = 2222




namespace :deploy do
  task :start, :roles => :app do
    run "touch #{current_release}/tmp/restart.txt"
  end

  task :stop, :roles => :app do
    # Do nothing.
  end

  task :restart, :roles => :app do
    run "touch #{current_release}/tmp/restart.txt"
  end
  
  task :cold do       # Overriding the default deploy:cold
    update
    load_schema       # My own step, replacing migrations.
    start
  end

  task :load_schema, :roles => :app do
    run "cd #{current_path}; rake db:schema:load"
  end

  
end
