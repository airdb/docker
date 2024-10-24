/* 
- PostgreSQL’s Docker image is configured to run any .sql files in the /docker-entrypoint-initdb.d directory.
- Ensure this script in the directory.
- docker compose logs:
- postgres  | /usr/local/bin/docker-entrypoint.sh: running /docker-entrypoint-initdb.d/init.sql
*/

CREATE TABLE tbl_example_user (
    "username" TEXT,
    "password" TEXT,
    birthed_at timestamp
    with
        time zone
);

/* init dataset
* COPY inflation_data
* FROM '/docker-entrypoint-initdb.d/inflation.csv'
* DELIMITER ','
* CSV HEADER;
*/