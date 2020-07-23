SUSE specific

zypper addrepo https://download.opensuse.org/repositories/openSUSE:Leap:15.2/standard/openSUSE:Leap:15.2.repo
zypper refresh
zypper install bazel














git clone https://github.com/abseil/abseil-cpp.git /src/workspace
mkdir -p /tmp/build_output/

docker run \
  -e USER="$(id -u)" \
  -u="$(id -u)" \
  -v /src/workspace:/src/workspace \
  -v /tmp/build_output:/tmp/build_output \
  -w /src/workspace \
  l.gcr.io/google/bazel:0.17.1 \
  --output_user_root=/tmp/build_output \
  build //absl/...




If we had linux container 

git clone https://github.com/abseil/abseil-cpp.git && cd abseil-cpp/
bazel build //absl/...
bazel build --config=<asan/tsan/msan> -- //absl/... -//absl/types:variant_test
docker run -it --entrypoint=/bin/bash l.gcr.io/google/bazel:0.17.1


python3 -V
java -version


