mysql_service 'foo' do
  port '3306'
  version '5.5'
  initial_root_password '1111'
  action [:create, :start]
end
