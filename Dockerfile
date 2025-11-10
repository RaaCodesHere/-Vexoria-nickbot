FROM eclipse-temurin:17-jre

WORKDIR /app

# Copy files
COPY RankedBot.jar .
COPY RankedBot/ RankedBot/
COPY data.db .

# Set env var
ARG DISCORD_TOKEN
ENV DISCORD_TOKEN=${DISCORD_TOKEN}

# Replace placeholder at build time
RUN if [ ! -z "$DISCORD_TOKEN" ]; then \
    sed -i "s/\\\${DISCORD_TOKEN}/${DISCORD_TOKEN}/g" /app/RankedBot/config.yml; \
    fi

# Start bot
CMD ["java", "-jar", "RankedBot.jar"]
