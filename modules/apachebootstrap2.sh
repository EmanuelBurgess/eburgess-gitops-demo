#!/bin/bash

#update all packages
sudo apt update -y

#install apache 2
sudo apt install apache2 -y

#start server
sudo service apache2 start

sleep 5

#remove index
sudo rm -rf /var/www/html/index.html

sleep 3

#copy over file
cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html>
<title>Web Server 1</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body, h1,h2,h3,h4,h5,h6 {font-family: "Montserrat", sans-serif}
.w3-row-padding img {margin-bottom: 12px}
/* Set the width of the sidebar to 120px */
.w3-sidebar {width: 120px;background: #222;}
/* Add a left margin to the "page content" that matches the width of the sidebar (120px) */
#main {margin-left: 120px}
/* Remove margins from "page content" on small screens */
@media only screen and (max-width: 600px) {#main {margin-left: 0}}
</style>
<body class="w3-black">

<!-- Page Content -->
<div class="w3-padding-large" id="main">
  <!-- Header/Home -->
  <header class="w3-container w3-padding-32 w3-center w3-black" id="home">
    <h1 class="w3-jumbo"><span class="w3-hide-small">I'm</span> Emanuel Burgess</h1>
    <p>Developer Relations Advocate at Google :D</p>
    <a href="https://imgur.com/LlZ0A8V"><img src="https://i.imgur.com/LlZ0A8V.jpg" title="source: imgur.com" /></a>
  </header>

  <!-- About Section -->
  <div class="w3-content w3-justify w3-text-grey w3-padding-64" id="about">
    <h2 class="w3-text-light-grey">A little about me</h2>
    <hr style="width:200px" class="w3-opacity">
    <p>Hello y’all (in my South Carolina accent) I am Emanuel. I’m a Devops consultant and I live just south of Atlanta. I've been in the cloud industry for a couple of years and I have worked for some of the top consulting agencies in the industry. I am a fan of AWS, GCP, Azure and pretty much anything cloud. I currently hold 2 AWS certifications: The AWS solutions architect and the AWS developers associate certification. I am excited about this opportunity to work for Google! Automate all the things
    
      <header class="w3-container w3-padding-32 w3-center w3-black" id="home">
    <h1 class="w3-jumbo"><span class="w3-hide-small"></h1>
    <p></p>
    <a href="https://i.imgur.com/qu5pnl6.png"><img src="https://i.imgur.com/qu5pnl6.png" title="source: imgur.com"
  /></a>
  </header>
EOF

#stack driver agent
gcloud beta compute ssh eburgessserver2 --project=mannyburgessdemo --zone=us-east1-b --command="curl -sSO https://dl.google.com/cloudagents/add-monitoring-agent-repo.sh && sudo bash add-monitoring-agent-repo.sh && sudo apt-get update && sudo apt-get install stackdriver-agent && sudo service stackdriver-agent start"

#logging
gcloud beta compute ssh eburgessserver2 --project=mannyburgessdemo --zone=us-east1-b --command="curl -sSO https://dl.google.com/cloudagents/add-logging-agent-repo.sh && sudo bash add-logging-agent-repo.sh && sudo apt-get update && sudo apt-get install google-fluentd && sudo apt-get install -y google-fluentd-catch-all-config && sudo service google-fluentd start"