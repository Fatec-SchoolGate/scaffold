docker pull minio/minio

docker run -d -p 9000:9000 -p 9001:9001 --name minio-schoolgate minio/minio server /data --console-address ":9001"