FROM debian
WORKDIR /app
COPY hello /app
EXPOSE 8000
CMD ./hello
