#!/bin/bash

git submodule init
git submodule update

# touchrst ensures that all changes in the RST or config YAML files
# are always taken into account in the compilation (make html).
make touchrst html
