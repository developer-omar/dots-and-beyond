#!/bin/bash

# --- CONFIGURATIONS ---
# Path to the user.js
# It is because I run the script with ./scripts/run.sh due to pwd
FILE_USERJS="configs/user.js"
# ---------------------

# Defining Colors
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo "Starting copy of user.js..."

# Verifying if the user.js exists
if [ ! -f "$FILE_USERJS" ]; then
  echo -e "${RED}Error: File $FILE_USERJS not found.${NC}"
  exit 1
fi

# Searching folders about Firefox profiles
PROFILES_DIR=$(find ~/.mozilla/firefox ~/snap/firefox/common/.mozilla/firefox/ \
  -type d \( -name "*.default*" -o -name "*.default-release*" \
  -o -name "*.Profile*" -o -name "*dev-edition-default*" \) 2>/dev/null)
# Managing folder names with spaces
IFS=$'\n' read -r -d '' -a profiles <<<"$PROFILES_DIR"$'\n'

# -lt less than -gt greater than -eq equal to
if [ ${#profiles[@]} -eq 0 ]; then
  echo -e "${RED}No se encontraron perfiles de Firefox.${NC}"
  exit 1
fi

# Copy the file in each profile directory
for dir in "${profiles[@]}"; do
  echo "Copying to: $dir"
  cp -f "$FILE_USERJS" "$dir/"
  # Setting permissions
  chmod 644 "$dir/user.js"
done

echo -e "${GREEN}¡Process completed successfully!${NC}"
echo "Remember restarting Firefox for applying the changes :)"
