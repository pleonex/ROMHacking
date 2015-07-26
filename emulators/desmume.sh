#!/bin/bash

# Download code
svn checkout svn://svn.code.sf.net/p/desmume/code/trunk desmume

# Go to folder
cd desmume/desmume

# Generate files
./autogen.sh

# Configure build to enable GDB Stub support
./configure --enable-gdb-stub

# Make
make
