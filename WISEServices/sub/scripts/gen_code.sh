#!/bin/bash

# Change to the parent directory.
cd "$(dirname "$(dirname "$(readlink -fm "$0")")")"

# Generate Thrift code.
cd src
rm -rf $1/gen_sub
mkdir $1/gen_sub
thrift -r --gen $1 -out $1/gen_sub spec.thrift
