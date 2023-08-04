# sudo docker build -t arkhanna/base:latest .
FROM arkhanna/base:latest

COPY --chmod=755 build/arkhanna-login-server /app/login-server

WORKDIR /app
ENTRYPOINT ["./login-server"]