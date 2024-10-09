#!/bin/bash
TEST_LIST=("YACS_PyNodeWithCache_swig" "NRT_GRIDS_SMESH_3D_MESH_HEXA3D_02_C3" "SHAPER_TestCreateShapesFromGroups" "YACS_PyNodeWithCache_swig" "YACS_SaveLoadRun_swig" )
for TEST in "${TEST_LIST[@]}"
do
    echo $TEST
    ./salome test -R $TEST --repeat-until-fail 1000 > $TEST.log
done