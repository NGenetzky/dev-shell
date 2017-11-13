
GIT_ROOT="$(git rev-parse --show-toplevel)"

build()
{
    sudo docker build \
        -t dev-sshd-wemux:0.0.1 \
        "${GIT_ROOT}/dev-sshd-wemux/dev-sshd-wemux"
}

run()
{
    sudo docker run \
        -it \
        -p 2222:22 \
        -v $(pwd):/mnt/pwd \
        dev-sshd-wemux:0.0.1
}

