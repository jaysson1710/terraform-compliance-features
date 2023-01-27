Feature: Network related general feature

	Scenario: Ensure that Network Security Group Flow Log is defined with retention period greater than 90 days
		Given I have azurerm_network_watcher_flow_log defined
		Then it must have retention_policy
		Then it must have enabled
		And its value must be true

		Given I have azurerm_network_watcher_flow_log defined
		Then it must have retention_policy
		Then it must have days
		And its value must be greater than 90

  	Scenario: Ensure a dns zone config architecture
    	Given I have azurerm_private_endpoint defined
    	Then it must have private_service_connection
		Then it must have is_manual_connection
		And its value must be false
