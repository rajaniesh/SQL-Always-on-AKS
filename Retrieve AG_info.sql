-- Retrieve the Availability Groups
SELECT name FROM sys.availability_groups
GO  

-- Retrieve the primary replica status
SELECT primary_replica, primary_recovery_health_desc, 
synchronization_health_desc 
FROM sys.dm_hadr_availability_group_states
GO  
