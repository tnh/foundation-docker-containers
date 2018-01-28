
BUILD_CONTAINER=${1:?"Specify build container"}
RUNSCRIPT=${2:?"Specify script to run"}

set -eo pipefail

set +e

docker run \
    -e ${BUILDKITE_COMMIT} \
    -e ${BUILDKITE_BUILD_NUMBER} \
    -e ${BUILDKITE_BRANCH} \
    -e ${BUILDKITE_BRANCH} \
    -v /var/run/docker.sock:/var/run/docker.sock
    ${AWS_DOCKER_ARN}/${BUILD_CONTAINER}:latest ${RUNSCRIPT}
