# in rails 6+ they run yarn:install task (which runs before precompile)
# in --production instead of normal install so the build deps such as postcss
# wont get installed.
Rake::Task['yarn:install'].clear if Rake::Task.task_defined?('yarn:install')

namespace :yarn do
  desc 'Install all JavaScript dependencies as specified via Yarn'
  task :install do
    system('./bin/yarn install --no-progress')
  end
end
