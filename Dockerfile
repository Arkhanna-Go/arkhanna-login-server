# sudo docker build -t arkhanna/base:latest .
FROM arkhanna/base:latest

# rathena-login-server will be replaced by vitharr-login-server
COPY --chmod=755 build/arkhanna-login-server /app/login-server
# COPY --chmod=755 build/rathena-login-server /app/login-server

WORKDIR /app
ENTRYPOINT ["./login-server"]