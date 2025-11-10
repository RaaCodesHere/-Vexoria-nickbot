FROM openjdk:17-slim

WORKDIR /app

# Copy the JAR file and config directory
COPY RankedBot.jar .
COPY RankedBot/ RankedBot/

# Run the bot
CMD ["java", "-jar", "RankedBot.jar"]
