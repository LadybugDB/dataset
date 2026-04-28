CREATE NODE TABLE city(id INT32, name STRING, population INT64, PRIMARY KEY(id)) WITH (storage = 'icebug-disk', table_path = 'nodes_city.parquet');
CREATE NODE TABLE user(id INT32, name STRING, age INT64, PRIMARY KEY(id)) WITH (storage = 'icebug-disk', table_path = 'nodes_user.parquet');
CREATE REL TABLE follows(FROM user TO user, since INT32) WITH (storage = 'icebug-disk', indices = 'indices_follows.parquet', indptr = 'indptr_follows.parquet');
CREATE REL TABLE livesin(FROM user TO city) WITH (storage = 'icebug-disk', indices = 'indices_livesin.parquet', indptr = 'indptr_livesin.parquet');
