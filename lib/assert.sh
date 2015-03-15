#!/bin/bash
#
# Wrapper for loading assert.sh from an external source.

assert_sh_src=https://raw.github.com/lehmannro/assert.sh/v1.1/assert.sh

# Download it if we need it and source it.
tmp_file="/tmp/assert.sh"
if ! [ -f $tmp_file ]; then
    echo "Loading assert.sh to $tmp_file"
    curl -sSL $assert_sh_src > $tmp_file
fi

source $tmp_file
