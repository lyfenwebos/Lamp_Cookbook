httpd_config 'default' do
 source 'default.conf.erb'
end

# Install Apache and start the service.
httpd_service 'default' do
 mpm 'prefork'
 action [:create, :start]
 subscribes :restart, 'httpd_config[default]'
end

# Add the site configuration.
# httpd_config 'default' do
#  source 'default.conf.erb'
#end

