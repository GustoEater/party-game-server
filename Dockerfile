FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    libx11-6 \
    libxcursor1 \
    libxrandr2 \
    libxi6 \
    libasound2 \
    libfontconfig1 \
    libfreetype6

COPY server.x86_64 /app/server
RUN chmod +x /app/server

EXPOSE 12345

CMD ["/app/server"]
