#!/bin/bash

# Replace the token placeholder with actual token from environment variable  
sed -i "s/\${DISCORD_TOKEN}/${DISCORD_TOKEN}/g" /app/RankedBot/config.yml

# Start the bot
java -jar RankedBot.jar
