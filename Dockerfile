FROM eclipse-temurin:17-jre

WORKDIR /app

# Copy the JAR file and config directory
COPY RankedBot.jar .
COPY RankedBot/ RankedBot/
COPY data.db .

# Run the bot
CMD ["java", "-jar", "RankedBot.jar"]
