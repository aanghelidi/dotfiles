command -v podman >/dev/null 2>&1 && export DOCKER_HOST="unix://$XDG_RUNTIME_DIR/podman/podman.sock"
