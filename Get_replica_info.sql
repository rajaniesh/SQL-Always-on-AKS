-- Get roles and health
SELECT role_desc, connected_state_desc, synchronization_health_desc 
FROM sys.dm_hadr_availability_replica_states
GO  

-- Get modes and endpoints
SELECT replica_server_name, availability_mode_desc, endpoint_url 
FROM sys.availability_replicas
GO

