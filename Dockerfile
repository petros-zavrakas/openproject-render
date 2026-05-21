FROM openproject/openproject:17

ENV OPDATA=/var/openproject/assets
ENV SECRET_KEY_BASE=8c69da9335d56722d40aac428cfa527bf41b228c5a90d1832399c540a947a7b6

USER root

RUN mkdir -p /var/openproject/assets && \
    chown -R openproject:openproject /var/openproject

USER openproject

EXPOSE 8080

CMD ["rails", "server", "-b", "0.0.0.0", "-p", "8080"]
