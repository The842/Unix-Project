## **Project Installation Instructions**

### **1\. Deploy the VPS**

1. Purchase and deploy a Virtual Private Server (VPS) from a provider like Cloudzy.

2. **Update the System**:

Log in to the VPS and update the package manager to ensure all software is current:  
 sudo apt update && sudo apt upgrade \-y

3. **Create a Non-Root User**:

For security, create a new user to manage the server:

 sudo adduser yourusername  
sudo usermod \-aG sudo yourusername

Switch to the new user:

 su \- yourusername

4. **Set Up SSH Authentication**:

Generate an SSH key:

 ssh-keygen \-t rsa \-b 4096 \-C "[your\_email@example.com](mailto:your_email@example.com)"

Add the public key to the server for passwordless login:

 mkdir \-p \~/.ssh  
echo "your-public-key" \>\> \~/.ssh/authorized\_keys  
chmod 600 \~/.ssh/authorized\_keys  
chmod 700 \~/.ssh

5. **Configure the Firewall**:

Install and configure UFW to allow essential traffic (e.g., SSH):

 sudo ufw allow OpenSSH  
sudo ufw enable  

### **2\. Set Up the Website**

1. **Install Nginx**:

Install the Nginx web server:

 sudo apt install nginx 

Start and enable Nginx:

 sudo systemctl start nginx  
sudo systemctl enable nginx

2. **Obtain and Configure SSL**:

Install Certbot to manage SSL certificates:  
 sudo apt install certbot python3-certbot-nginx \-y

Obtain an SSL certificate:  
 sudo certbot \--nginx

* Follow the prompts to set up HTTPS for your domain.


### **3\. Connect the Website to a Domain**

1. Update your DNS records to point your domain to the VPS IP address:

Add an `A` record in your domain registrar's DNS settings:  
 Type: A  
Name: @  
Value: \[Your VPS IP Address\]

2. Verify the domain connection:

   * Wait for the DNS changes to propagate (may take a few hours).  
   * Test your domain by visiting `http://yourdomain.com` in a browser.


### **4\. Configure the Git Repository**

1. **Clone the Website Repository**:

Use SSH to clone the repository containing your website files:  
 git clone git@github.com:yourusername/yourrepository.git /var/www/html


### **5\. Automate Updates with a Bash Script**

1. **Add the Bash Script**:

Include the script update\_websie.sh in your project 

**Make the Script Executable**:  
 chmod \+x /path/to/update\_website.sh

2. **Schedule with Cron**:

Open the crontab editor:  
 crontab \-e

Add the following line to execute the script every minute:  
 \* \* \* \* \* /path/to/update\_website.sh \>\> /var/log/update\_website.log 2\>&1


### **6\. Test the Setup**

1. Push changes to the repository and verify that the website updates automatically within a minute.  
2. Visit the website using your domain to ensure it's live and functioning.


### **Congrats\!**

* Your website is live, accessible via your domain, and updates automatically with changes pushed to the repository.

