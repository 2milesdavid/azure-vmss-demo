resource "azurerm_lb_nat_pool" "lb-natpool" {
      	resource_group_name 		= azurerm_resource_group.user25-rg.name
	name 				= "ssh"
	loadbalancer_id 		= azurerm_lb.user25-lb.id
	protocol 			= "Tcp"
	frontend_port_start 		= 50000
	frontend_port_end 		= 50119
	backend_port 			= 22
	frontend_ip_configuration_name = "user25-pip"
}
