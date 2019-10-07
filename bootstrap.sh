docker build -q -t cv .
docker run -it --rm -v "$(pwd)":/cv cv "$@"

