docker build --pull --rm -f "Dockerfile" -t pioasm:latest "." 
docker create --name temp_image_name pioasm:latest
docker cp temp_image_name:/pioasm .
docker rm temp_image_name
docker image rm pioasm:latest