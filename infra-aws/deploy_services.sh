#!/bin/bash

# Ask for the new ECR repository URL
read -p "Enter the new ECR repository URL (e.g., 123456789012.dkr.ecr.eu-central-1.amazonaws.com/lakeside): " NEW_ECR_URL

# Define the directory containing the YAML template files
SOURCE_DIRECTORY='./kubernetes/manifests_template/'

# Define the output directory for the modified YAML files
OUTPUT_DIRECTORY='./kubernetes/manifests_out/'

# Create the output directory if it doesn't exist
mkdir -p "$OUTPUT_DIRECTORY"

# Loop through each YAML file in the source directory and replace the placeholder with the new ECR URL
for file in "$SOURCE_DIRECTORY"/*.yaml
do
  # Define the new file path in the output directory
  new_file="$OUTPUT_DIRECTORY$(basename "$file")"

  # Replace the placeholder with the new ECR URL and write to the output directory
  sed "s|###URL_ECR###|$NEW_ECR_URL|g" "$file" > "$new_file"
  echo "Updated ECR URL in $new_file"
done

echo "All YAML files have been updated with the new ECR URL and saved in $OUTPUT_DIRECTORY."

