#!/bin/bash

sudo ./build/X86/gem5.debug --debug-flags=cache ./configs/example/se.py -c ./tests/test-progs/hello/bin/x86/linux/hello --caches
