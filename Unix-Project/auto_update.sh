

# Navigate to the project directory
cd /home/user/Documents/Unix-Project || {
  echo "Failed to navigate to project directory."
  exit 1
}

# Pull the latest changes from the Git repository
git pull origin main

# Check if the git pull was successful
if [ $? -eq 0 ]; then
  echo "$(date): Successfully pulled updates from GitHub" >> auto_update.log
else
  echo "$(date): Failed to pull updates from GitHub" >> auto_update.log
  exit 1
fi

# Restart Nginx web server
sudo systemctl restart nginx

# Check if Nginx restart was successful
if [ $? -eq 0 ]; then
  echo "$(date): Nginx restarted successfully" >> auto_update.log
else
  echo "$(date): Failed to restart Nginx" >> auto_update.log
fi