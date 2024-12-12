The goal is to understand what `s3` and `read_parquet` table functions do in ClickHouse and DukcDB. And cache. And canonical log. Kind of like [danthegoodman1/icedb](https://github.com/danthegoodman1/icedb)

```console
// don't forget to `docker stop minio` once done
$ docker run -d --rm -p 9000:9000 --name minio minio/minio server /data
$ docker exec minio mc alias set local http://localhost:9000 minioadmin minioadmin
$ docker exec minio mc mb local/testbucket
```
```elixir
Mix.install([{:s3xy, github: "ruslandoga/s3xy"}], force: true)

s3 = [
  access_key_id: "minioadmin",
  secret_access_key: "minioadmin",
  url: "http://localhost:9000",
  region: "us-east-1"
]

proxy = [
  port: 8000
]

S3xy.http(s3: s3, proxy: proxy)
```
```console
$ duckdb
```
```sql
insert into ()
```
