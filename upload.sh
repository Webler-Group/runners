#!/bin/bash

REGISTRY=ghcr.io/webler-group

if [ $# -eq 0 ]; then
    # Loop through all subdirectories in the current directory
    for dir in */; do
        # Check if Dockerfile exists in the subdirectory
        if [ -f "$dir/Dockerfile" ]; then
            tag="${dir%/*}"
            # Build the Docker image with the subdirectory name as the tag
            docker build -t "$REGISTRY/$tag" "$dir"
            docker push "$REGISTRY/$tag"
        fi
    done
else
    dir=$1
    # Build Docker image for the specified directory
    if [ -f "$1/Dockerfile" ]; then
        tag="${dir%/*}"
        docker build -t "$REGISTRY/$tag" "$dir"
        docker push "$REGISTRY/$tag"
    fi
fi