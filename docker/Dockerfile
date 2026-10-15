FROM busybox:1.36.1
LABEL org.opencontainers.image.title="studyguidemaker-url-tools" \
      org.opencontainers.image.description="Offline URL builder for Study Guide Maker source, audience, flashcard, and quiz pages. Not an official SDK." \
      org.opencontainers.image.url="https://studyguidemaker.net/" \
      org.opencontainers.image.source="https://github.com/wangneo276-lgtm/studyguidemaker-url-tools" \
      org.opencontainers.image.version="0.1.0" \
      org.opencontainers.image.licenses="MIT"
COPY docker/cli.sh /usr/local/bin/studyguidemaker-url-tools
RUN chmod +x /usr/local/bin/studyguidemaker-url-tools
ENTRYPOINT ["/usr/local/bin/studyguidemaker-url-tools"]
