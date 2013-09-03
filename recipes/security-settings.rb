include_recipe "denyhosts"
include_recipe "ufw"

firewall_rule "mosh" do
  protocol :udp
  port_range 60000..61000
  action :allow
end
