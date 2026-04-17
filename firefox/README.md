# Configurations for a Mozilla Firefox

This repository contains configuration files for a Mozilla Firefox web browser.
You can choose to apply these configurations either programmatically or manually.

## Programmatically

- Run the following command in the terminal to automatically copy the
  configuration files to each Firefox profile directory

  ```bash
  ./scripts/run.sh
  ```

## Manually

To apply these configurations, you can follow the instructions below:

- Open the browser and type `about:support` in the address bar.
- Click on the "Open Folder" button next to "Profile Folder".
  This will open the profile directory in your file explorer.
- Copy the user.js from this repository and paste them into the profile
  directory.
- Restart the browser to apply the new configurations.

## Note

- Always close Firefox before copying or replacing these files, otherwise
  changes may not stick.
