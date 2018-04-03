Created by Pawel Rozek on April 3, 2018

Atlassian Confluence 6.1.2

Home Directory can be mapped as /var/atlassian/application-data/

Port to be exposed is 8090

Installation directory /opt/atlassian/confluence

# How to install: #
Pre-Requesits:
   - Docker and Docker Compose installed.
   - 2 directories created for docker-compose.yml file to work.
      - /opt/atlassian
      - /opt/conflogs
1. Clone files to Directory on your local machine
2. Build image: docker build -t "confluence:6.1.2" ./
3. Run docker-compose up -d
4. Go to http://localhost:8090
