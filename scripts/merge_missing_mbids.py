#!/usr/bin/env python

# Copyright (C) 2011 Lukas Lalinsky
# Distributed under the MIT license, see the LICENSE file for details.

import os
import sys
sys.path.append(os.getcwd())
from acoustic.script import run_script
from acoustic.data.track import merge_missing_mbids


def main(script, opts, args):
    conn = script.engine.connect()
    with conn.begin():
        merge_missing_mbids(conn)


run_script(main, master_only=True)

