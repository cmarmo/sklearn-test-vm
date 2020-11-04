# sklearn-test-vm
Containers for scikit-learn wheel testing

Compatible with `podman` or `docker` (<docker_exec> from now).

Build the image with
```
$ sh build_cont.sh
```

Run the image interactively with
```
$ <docker_exec> run --rm -ti <image_id> <bash_path>/bash
```
