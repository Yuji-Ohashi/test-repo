httpd_service 'default' do
  action [:create, :start]
end

httpd_config 'default' do
  source 'default.cnf.erb'
  notifies :restart, 'httpd_service[default]'
  action :create
end
