#!/bin/bash

read -r -p "Enter your repository ssh link: " ssh_url
./scripts/init_repository.sh "$ssh_url"
read -r -p "Enter your api_key: " api_key
read -r -p "Enter your repository name: airbyte/airbyte-main: " repo
./scripts/create_branches_and_commits.sh

python main.py "$api_key" "$repo"

echo "Success"
