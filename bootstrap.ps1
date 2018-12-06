docker build -q -t cv .
$mount = "$pwd" + ":/cv"
docker run -it --rm -v "$mount" `
    cv $args
