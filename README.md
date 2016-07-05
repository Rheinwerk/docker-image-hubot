# Rheinwerk Hubot Docker Image

This image has [hubot-bosun](https://github.com/lukaspustina/hubot-bosun) installed.

## Running

```
docker run -it
    -e HUBOT_AUTH_ROLES="admin=<user id,...> bosun=<user id,...>" \
    -e HUBOT_BOSUN_HOST="http://<Bosun Host>:8070" \
    -e HUBOT_BOSUN_ROLE=bosun \
    -e HUBOT_BOSUN_SLACK="<yes for Slack message formatting, otherwise no>" \
    -e HUBOT_BOSUN_LOG_LEVEL=debug \
    -e HUBOT_BOSUN_TIMEOUT=10000 \
    -e HUBOT_PINGDOM_USERNAME=<pingdom user name> \
    -e HUBOT_PINGDOM_PASSWORD=<pingdom password> \
    -e HUBOT_PINGDOM_APP_KEY=<pingdom api key> \
    -e HUBOT_SLACK_TOKEN='<slack token>' \
    -e REDIS_URL='tcp://<redis host>:6379' \
    rheinwerk/hubot
```

