docker_exec=podman

echo "Running: $docker_exec build $options -t linux64-python37 ."
$docker_exec build -t linux64-python37 .


