#!/bin/bash

python3 GenericTextReader/reader.py --file testinput |  python3 SpacyNER/spacyner.py | python3 NECSVWriter/necsvwriter.py -o out.csv
