#
# Docker version 28.0.4, build b8034c0
# 0001multiples_of_3_or_5
# 
# Copyright 2025 @GitHub JoergEm
# 
# This program is WITHOUT ANY WARRANTY; without even the implied
# warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
#


FROM alpine:latest

RUN apk add --no-cache socat

RUN summe=0 && \
    for nummer in $(seq 0 999); do \
      if [ $((nummer % 3)) -eq 0 ] || [ $((nummer % 5)) -eq 0 ]; then \
        summe=$((summe + nummer)); \
      fi; \
    done; \
    echo "$summe" > /summe.txt

EXPOSE 8889

CMD sh -c 'while true; do \
  echo -e "HTTP/1.1 200 OK\r\nContent-Type: text/plain\r\n\r\n$(cat /summe.txt)" | socat TCP-LISTEN:8889,reuseaddr,fork -; \
done'
