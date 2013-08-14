include_recipe "denyhosts"

firewall_rule "ssh" do
  port 22
  protocol :tcp
  action :allow
  notifies :enable, "firewall[ufw]"
end

firewall_rule "mosh" do
  protocol :udp
  port_range 60000..61000
  action :allow
end

firewall "ufw" do
  action :nothing
end

