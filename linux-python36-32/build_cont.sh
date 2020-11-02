docker_exec=podman

echo "Running: $docker_exec build $options -t linux32-python36 ."
$docker_exec build -t linux32-python36 .


