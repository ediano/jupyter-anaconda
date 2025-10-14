#!/bin/bash

exec fish
source /opt/conda/bin/activate
conda init --all
conda config --set auto_activate_base True
