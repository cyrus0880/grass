#FROM python:3.12-alpine3.19
#RUN apk add --no-cache chromium chromium-chromedriver unzip 
#RUN apk add --update --no-cache py3-pip
#RUN apk add --no-cache cargo rust

FROM python:3.12.2-bullseye
RUN apt update -y && apt install -y chromium chromium-driver unzip 

WORKDIR /usr/src/app
COPY src .

RUN pip3 install --no-cache-dir -r ./requirements.txt --break-system-packages

CMD [ "python", "./main.py" ]
EXPOSE 80

# docker buildx build --push \
# --platform linux/arm64,linux/arm/v7,linux/arm64/v8,linux/amd64 \ 
# -t cyrus0880/grass:1 -t cyrus0880/grass:latest .