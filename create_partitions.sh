#!/bin/bash
# Scripts for creating SLURM partitions
# with defualt nodes and maxtime, unless supplied by user. 

echo "Creating Partitions"

echo -n "Enter partition name: "
read p_name

echo -n "Enter range of Nodes: "
read nodes
# Default nodes is all nodes
[[ -z "$nodes" ]] && nodes=snode[1-32]

echo -n "Enter MaxTime: "
read mtime
# 
[[ -z "$mtime" ]] && mtime=336:00:00

/opt/slurm/bin/scontrol create partition="$p_name" Nodes="$nodes" maxtime="$mtime"
