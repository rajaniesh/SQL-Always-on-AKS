-- Retrieve the Availability Group databases and state
SELECT a.name, a.state_desc, c.replica_server_name, b.synchronization_state_desc, b.synchronization_health_desc, b.last_hardened_lsn,
 b.redo_queue_size, b.log_send_queue_size 
FROM sys.databases AS a  
INNER JOIN sys.dm_hadr_database_replica_states AS b ON a.database_id = b.database_id
INNER JOIN sys.availability_replicas AS c ON b.replica_id = c.replica_id  