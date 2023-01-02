#!/bin/bash
OUTPUTFILE="out.csv"
MAPPINGFOLDER='Mapper/'
INPUTFOLDER='ExampleInput'

for f in $INPUTFOLDER/*
do
    python3 GenericTextReader/reader.py --file $f | \
    python3 SkillMiner/skillminer.py -t KldBK -p $MAPPINGFOLDER | \
    python3 NECSVWriter/necsvwriter.py -a -o $OUTPUTFILE
done
