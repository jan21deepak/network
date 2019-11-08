CREATE EXTERNAL TABLE IF NOT EXISTS [your database].network (
  benchmark_version VARCHAR(8),
  collectd_rrd VARCHAR(255),
  dns_recursive TINYINT,
  dns_servers TINYINT,
  iteration TINYINT,
  meta_compute_service VARCHAR(32),
  meta_compute_service_id VARCHAR(24),
  meta_cpu VARCHAR(32),
  meta_cpu_cores SMALLINT,
  meta_geo_region VARCHAR(32),
  meta_hostname VARCHAR(64),
  meta_instance_id VARCHAR(96),
  meta_location VARCHAR(32),
  meta_location_country VARCHAR(2),
  meta_location_state VARCHAR(32),
  meta_memory VARCHAR(32),
  meta_memory_gb SMALLINT,
  meta_memory_mb INT,
  meta_os_info VARCHAR(32),
  meta_provider VARCHAR(32),
  meta_provider_id VARCHAR(24),
  meta_region VARCHAR(32),
  meta_resource_id VARCHAR(32),
  meta_run_id VARCHAR(32),
  meta_test_id VARCHAR(64),
  metric FLOAT,
  metric_10 FLOAT,
  metric_25 FLOAT,
  metric_75 FLOAT,
  metric_90 FLOAT,
  metric_fastest FLOAT,
  metric_max FLOAT,
  metric_mean FLOAT,
  metric_min FLOAT,
  metric_rstdev FLOAT,
  metric_slowest FLOAT,
  metric_stdev FLOAT,
  metric_sum FLOAT,
  metric_sum_squares FLOAT,
  metric_timed FLOAT,
  metric_unit VARCHAR(8),
  metric_unit_long VARCHAR(32),
  metrics VARCHAR(255),
  samples TINYINT,
  status VARCHAR(8),
  tcp_file VARCHAR(64),
  test VARCHAR(12),
  test_endpoint VARCHAR(64),
  test_geo_region VARCHAR(32),
  test_instance_id VARCHAR(96),
  test_ip VARCHAR(16),
  test_location VARCHAR(32),
  test_location_country VARCHAR(2),
  test_location_state VARCHAR(32),
  test_private_endpoint TINYINT,
  test_private_network_type VARCHAR(64),
  test_provider VARCHAR(32),
  test_provider_id VARCHAR(24),
  test_region VARCHAR(32),
  test_service VARCHAR(32),
  test_service_id VARCHAR(24),
  test_service_type VARCHAR(8),
  test_started TIMESTAMP,
  test_stopped TIMESTAMP,
  tests_failed SMALLINT,
  tests_success SMALLINT,
  throughput_custom_cmd TINYINT,
  throughput_https TINYINT,
  throughput_keepalive TINYINT,
  throughput_size FLOAT,
  throughput_small_file TINYINT,
  throughput_threads TINYINT,
  throughput_time TINYINT,
  throughput_transfer FLOAT,
  timeout TINYINT,
  traceroute VARCHAR(255)
)
ROW FORMAT DELIMITED
  FIELDS TERMINATED BY ','
  ESCAPED BY '\\'
  LINES TERMINATED BY '\n'
LOCATION 's3://[your S3 bucket]/path/to/csv/files/'
TBLPROPERTIES (
  'skip.header.line.count'='1'
);