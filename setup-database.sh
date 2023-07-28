echo "Downloading the postgres image..."

docker pull postgres:15.3-alpine3.18

echo "Image downloaded, creating the container..."

docker run --name postgres-schoolgate -e POSTGRES_USER=admin -e POSTGRES_PASSWORD=admin -p 5432:5432 -d postgres:15.3-alpine3.18

echo "Container created"

echo "Waiting 10 seconds for the container to start"

sleep 10

echo "Creating the project database..."

docker exec -it postgres-schoolgate psql -U admin -c "CREATE DATABASE schoolgate;"

echo "If not went wrong, the 'schoolgate' database should have been created"

echo "POSTGRES DEV USERNAME: admin"
echo "POSTGRES DEV PASSWORD: admin"
echo "POSTGRES HOST IP: $(docker inspect -f '{{range .NetworkSettings.Networks}}{{.Gateway}}{{end}}' postgres-schoolgate)"
echo "POSTGRES PORT: 5432"