dep_included? 'unicorn'

set :unicorn_config,  -> { "#{shared_path}/config/unicorn.rb" }
set :unicorn_log,     -> { "#{shared_path}/log/unicorn.log" }

namespace :unicorn do

  desc "Initial Setup"
  task :setup do
    on roles :app do
      execute :mkdir, "-p", "#{shared_path}/config"

      set :unicorn_workers, 
        fetch(:unicorn_workers) { capture(:grep, "-c", "processor",
                                          "/proc/cpuinfo").to_i }
      template "unicorn/unicorn.rb.erb", fetch(:unicorn_config)
    end
  end

  before "foreman:restart", "unicorn:setup"

  desc "Writes the unicorn part of the Procfile"
  task :procfile do
    on roles :app do
      unicorn_cmd = SSHKit::Command.new(:unicorn,
                                        "-c", fetch(:unicorn_config),
                                        "-E", fetch(:rails_env)).to_s
      upload! StringIO.new("app: #{unicorn_cmd}\n"), "#{shared_path}/Procfile.app"
    end
  end

  before "foreman:setup", "unicorn:procfile"
end