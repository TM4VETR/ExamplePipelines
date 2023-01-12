#!/bin/bash
MAPPINGFOLDER='Mapper/'
INPUTFOLDER='ExampleInput'
TO="KldBK,ESCO,BIBBTOOLS"
CONN="bolt://localhost:7687"
USER="neo4j"
PW="neo4j"

for f in $INPUTFOLDER/*
do
    python3 GenericTextReader/reader.py --file $f | \
    python3 SkillMiner/skillminer.py -t $TO -p $MAPPINGFOLDER | \
    python3 NeoWriter/neowriter.py -c $CONN -u $USER -p $PW -d
done
