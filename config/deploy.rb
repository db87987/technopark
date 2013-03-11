load 'deploy/assets'

server "194.190.225.173", :web, :app, :db, primary: true

set :user, "tpark"
set :application, "technopark"
set :deploy_to, "/home/tpark/#{application}"
set :deploy_via, :remote_cache
set :use_sudo, false

set :scm, "git"
set :repository, "git@github.com:babrovka/technopark.git"
set :branch, "master"

default_run_options[:pty] = true
ssh_options[:forward_agent] = true

after "deploy", "deploy:cleanup" # keep only the last 5 releases