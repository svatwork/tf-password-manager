docker run --name passbolt \
             -e DATASOURCES_DEFAULT_HOST="35.204.217.203" \
             -e DATASOURCES_DEFAULT_PASSWORD="4393" \
             -e DATASOURCES_DEFAULT_USERNAME="admin" \
             -e DATASOURCES_DEFAULT_DATABASE="passbolt-db" \
             -e APP_FULL_BASE_URL="https://34.90.20.18" \
             -p 80:80 \
             -p 443:443 \
             passbolt/passbolt:2.11.0-debian