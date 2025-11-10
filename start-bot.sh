#!/bin/bash

# Debug: Print the token (first few chars only for security)
echo "Token starts with: ${DISCORD_TOKEN:0:20}..."

# Replace the token placeholder with actual token from environment variable  
sed -i "s|\\\${DISCORD_TOKEN}|${DISCORD_TOKEN}|g" /app/RankedBot/config.yml

# Debug: Check what's in the config
echo "Config token line:"
grep "token:" /app/RankedBot/config.yml

# Start the bot
java -jar RankedBot.jar
