require 'redmine'

require_dependency 'google_analytics_hooks'

Redmine::Plugin.register :google_analytics_plugin do
  name 'Google Analytics plugin'
  author 'Eric Davis'
  description 'Redmine plugin to insert a Google Analytics (or e.g. Piwik) tracking code into Redmine based on user roles.'
  url 'https://projects.littlestreamsoftware.com/projects/redmine-analytics'
  author_url 'http://www.littlestreamsoftware.com'

  version '0.3.0-beta'

  requires_redmine :version_or_higher => '2.0.0'

  settings :default => {
    'google_analytics_code' => '',
    'google_analytics_log_anonymous' => true,
    'google_analytics_log_authenticated' => true,
    'google_analytics_log_administrator' => true
  }, :partial => 'google_analytics_settings'

end

