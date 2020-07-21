#
# Configuration for creating a dockerfile, building the docker image, and
# for pushing it to a docker registry.
#

. ./common-config.sh

# The OS family. Determines which collection of install scripts to use.
# Currently, choices are 'alpine' or 'ubuntu'.
os="ubuntu"

# The argument of the FROM line in the dockerfile. This is the docker
# URL of the base image, optionally followed by more things.
from="ubuntu"

# This is the argument of 'docker pull', 'docker push', etc. for the image
# we are building.
docker_url="mjambon/r2c-ocaml:ubuntu"

# User to create and use. If it already exists, we'll try to use it.
user="user"

# Extra packages to be installed by the native package manager.
extra_packages="$extra_deb_packages"
