FROM openproject/openproject:17

ENV OPDATA=/var/openproject/assets
ENV SECRET_KEY_BASE=changeme_change_this_64_char_hex

USER root

RUN mkdir -p /var/openproject/assets && \
    chown -R openproject:openproject /var/openproject

USER openproject

EXPOSE 8080

CMD ["rails", "server", "-b", "0.0.0.0", "-p", "8080"]
