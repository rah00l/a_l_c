# If you have previously been relying upon the code to start, stop 
# and restart your mongrel application, or if you rely on the database
# migration code, please uncomment the lines you require below

# If you are deploying a rails app you probably need these:

# load 'ext/rails-database-migrations.rb'
# load 'ext/rails-shared-directories.rb'

# There are also new utility libaries shipped with the core these 
# include the following, please see individual files for more
# documentation, or run `cap -vT` with the following lines commented
# out to see what they make available.

# load 'ext/spinner.rb'              # Designed for use with script/spin
# load 'ext/passenger-mod-rails.rb'  # Restart task for use with mod_rails
# load 'ext/web-disable-enable.rb'   # Gives you web:disable and web:enable

# If you aren't deploying to /u/apps/#{application} on the target
# servers (which is the default), you can specify the actual location
# via the :deploy_to variable:
# set :deploy_to, "/var/www/#{application}"

# If you aren't using Subversion to manage your source code, specify
# your SCM below:
# set :scm, :subversion
# see a full list by running "gem contents capistrano | grep 'scm/'"

role :web, "dev02.livialegal.com"
set :application, "Livia Phase 1"
set :repository,  "/home/dev/livia_portal/.git"
default_run_options[:pty] = true
#set :repository,  "git@github.com:vanpelt/rails-app.git"
set :scm, "git"
set :branch, "master"

desc "Show the freespace on the server"
task :show_free_space do
  run "df -h /"
end

desc "Echo the server's hostname"
task :echo_hostname do
  system "dir c:/"
  run "echo `hostname`"
end


