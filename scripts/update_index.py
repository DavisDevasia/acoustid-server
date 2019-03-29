#!/usr/bin/env python

# Copyright (C) 2011-2012 Lukas Lalinsky
# Distributed under the MIT license, see the LICENSE file for details.

import os
import sys
sys.path.append(os.getcwd())
from contextlib import closing
from acoustic.script import run_script
from acoustic.data.fingerprint import update_fingerprint_index


def main(script, opts, args):
    with closing(script.engine.connect()) as db:
        update_fingerprint_index(db, script.index)


run_script(main)

