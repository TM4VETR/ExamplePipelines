#!/bin/bash
OUTPUTFILE="out.csv"
MAPPINGFOLDER='Mapper/'
INPUTFOLDER='ExampleInput'
TO="KldBK,ESCO,BIBBTOOLS"

for f in $INPUTFOLDER/*
do
    python3 GenericTextReader/reader.py --file $f | \
    python3 SkillMiner/skillminer.py -t $TO -p $MAPPINGFOLDER | \
    python3 NECSVWriter/necsvwriter.py -a -o $OUTPUTFILE
done
