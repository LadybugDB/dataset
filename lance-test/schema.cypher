CREATE NODE TABLE user(id INT32, name STRING, age INT64, PRIMARY KEY(id)) WITH (storage = 'user.lance', format = 'lance');
CREATE NODE TABLE city(id INT32, name STRING, population INT64, PRIMARY KEY(id)) WITH (storage = 'city.lance', format = 'lance');
CREATE REL TABLE follows(FROM user TO user, since INT32) WITH (storage = 'follows.lance', format = 'lance');
CREATE REL TABLE livesin(FROM user TO city) WITH (storage = 'livesin.lance', format = 'lance');
