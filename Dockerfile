FROM alpine:3.20

RUN apk add --no-cache curl ca-certificates bash \
 && curl -O https://downloads.rclone.org/rclone-current-linux-amd64.zip \
 && unzip rclone-current-linux-amd64.zip \
 && cp rclone-*-linux-amd64/rclone /usr/bin/ \
 && chmod +x /usr/bin/rclone \
 && rm -rf rclone-* 

# Render provides PORT env var
ENV PORT=10000

COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
