# temporary workaround to prevent IRB::TOPLEVEL_BINDING error [https://github.com/basecamp/mission_control-jobs/issues/42]
if defined?(Rails::Console)
  require "irb"
end
