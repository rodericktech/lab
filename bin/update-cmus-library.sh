#!/bin/bash

cmus-remote -C clear
cmus-remote -C "add ~/personal/local-music"
cmus-remote -C "update-cache -f"
