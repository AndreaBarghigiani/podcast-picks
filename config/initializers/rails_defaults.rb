# Specify a serializer for the signed and encrypted cookie jars.
# Valid options are :json, :marshal, and :hybrid.
Rails.application.config.action_dispatch.cookies_serializer = :json

# Configure sensitive parameters which will be filtered from the log file.
Rails.application.config.filter_parameters += %i[:passw secret token _key crypt salt certificate otp ssn]

# You can add backtrace silencers for libraries that you're using but don't wish to see in your backtraces.
# Rails.backtrace_cleaner.add_silencer { |line| /my_noisy_library/.match?(line) }

# You can also remove all the silencers if you're trying to debug a problem that might stem from framework code
# by setting BACKTRACE=1 before calling your invocation, like "BACKTRACE=1 ./bin/rails runner 'MyClass.perform'".
Rails.backtrace_cleaner.remove_silencers! if ENV["BACKTRACE"]
