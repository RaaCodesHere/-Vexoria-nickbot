FROM eclipse-temurin:17-jre

WORKDIR /app

# Copy the JAR file and config directory
COPY RankedBot.jar .
COPY RankedBot/ RankedBot/
COPY data.db .
COPY start-bot.sh .

# Make script executable
RUN chmod +x start-bot.sh

# Run the bot via script
CMD ["./start-bot.sh"]
