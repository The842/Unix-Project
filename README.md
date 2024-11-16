# Unix-Project
Semester 3 Unix: This project aims to create a continuously updated website hosted on a Debian-based virtual private server (VPS). 

The website will be linked to a Git repository, where any changes to the repository will be automatically reflected on the live website through scheduled scripts. Additionally, as a bonus feature, we will set up a Minecraft server on the same VPS to demonstrate resource management and multi-service hosting on a single Linux server.

2.Platform of Choice

The project will be deployed on a private Debian VPS provided by Cloudzy, chosen for its stability, flexibility, and full root access. This platform allows for the configuration of secure multi-user access, the use of cron jobs for automated processes, and the flexibility to manage both the website and Minecraft server on a reliable Linux environment.

3.Demonstrative Plan

	The project will be demonstrated using PuTTY on school computers to provide secure remote access to the VPS. During the demonstration, we will edit the source files in the Git repository to showcase real-time updates on the live website, facilitated by automated scripts. Additionally, we will highlight the setup and operation of the Minecraft server as a secondary feature, demonstrating the VPS’s capacity to handle multiple services effectively.

4.Requirements

System Setup and Security:

We will configure the server with individual user accounts for each team member, enabling secure access and collaboration. Authentication will be managed through SSH keys provided by the server, allowing for secure, password-free logins. File permissions will be set to ensure each user’s access is controlled and limited to the necessary files.


Process and Service Management:

To manage the automated updates on the website, we will use cron to schedule regular checks for changes in the Git repository. The server will monitor the repository at intervals, ensuring any updates are fetched and displayed promptly. Systemd may be used to manage the server’s uptime and restart services as needed to keep the website operational.



Automated Task Scripting:

A Bash script will automate the process of pulling updates from the Git repository and refreshing the website files. The script will be triggered by a cron job, facilitating seamless updates without manual intervention. This ensures that any changes to the Git repository are reflected in real-time on the website.
