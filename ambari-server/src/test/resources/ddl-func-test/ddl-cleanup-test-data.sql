INSERT INTO stack (stack_id, stack_name, stack_version) VALUES (1, 'HDP', '2.4');
INSERT INTO adminresourcetype (resource_type_id, resource_type_name) VALUES (1, 'AMBARI');
INSERT INTO adminresource (resource_id, resource_type_id) VALUES (1, 1);
INSERT INTO clusters (cluster_id, resource_id, cluster_info, cluster_name, provisioning_state, security_type, desired_cluster_state, desired_stack_id) VALUES (1, 1, '', 'downscaletest', 'INSTALLED', 'NONE', '', 1);
INSERT INTO alert_definition (definition_id, cluster_id, definition_name, service_name, component_name, scope, label, description, enabled, schedule_interval, source_type, alert_source, hash, ignore_host) VALUES (1, 1, 'yarn_resourcemanager_rpc_latency', 'YARN', 'RESOURCEMANAGER', 'ANY', 'ResourceManager RPC Latency', 'This host-level alert is triggered if the ResourceManager operations RPC latency exceeds the configured critical threshold. Typically an increase in the RPC processing time increases the RPC queue length, causing the average queue wait time to increase for ResourceManager operations. The threshold values are in milliseconds.', 1, 5, 'METRIC', '{"uri":{"http":"{{yarn-site/yarn.resourcemanager.webapp.address}}","https":"{{yarn-site/yarn.resourcemanager.webapp.https.address}}","https_property":"{{yarn-site/yarn.http.policy}}","https_property_value":"HTTPS_ONLY","kerberos_keytab":"{{yarn-site/yarn.resourcemanager.webapp.spnego-keytab-file}}","kerberos_principal":"{{yarn-site/yarn.resourcemanager.webapp.spnego-principal}}","default_port":0,"connection_timeout":5.0,"high_availability":{"alias_key":"{{yarn-site/yarn.resourcemanager.ha.rm-ids}}","http_pattern":"{{yarn-site/yarn.resourcemanager.webapp.address.{{alias}}}}","https_pattern":"{{yarn-site/yarn.resourcemanager.webapp.https.address.{{alias}}}}"}},"jmx":{"property_list":["Hadoop:service\u003dResourceManager,name\u003dRpcActivityForPort*/RpcQueueTimeAvgTime","Hadoop:service\u003dResourceManager,name\u003dRpcActivityForPort*/RpcProcessingTimeAvgTime"],"value":"{0}"},"type":"METRIC","reporting":{"ok":{"text":"Average Queue Time:[{0}], Average Processing Time:[{1}]"},"warning":{"text":"Average Queue Time:[{0}], Average Processing Time:[{1}]","value":3000.0},"critical":{"text":"Average Queue Time:[{0}], Average Processing Time:[{1}]","value":5000.0},"units":"ms"}}', '1babf240-2131-40f6-81f5-65067bc82c14', 0);
INSERT INTO alert_history (alert_id, cluster_id, alert_definition_id, service_name, component_name, host_name, alert_instance, alert_timestamp, alert_label, alert_state, alert_text) VALUES (1, 1, 1, 'AMBARI', 'AMBARI_AGENT', 'host-10-0-1-13.node.dc1.consul', NULL, 1455885271767, 'Host Disk Usage', 'OK', 'Capacity Used: [10.87%, 4.7 GB], Capacity Total: [42.9 GB], path=/usr/hdp');
