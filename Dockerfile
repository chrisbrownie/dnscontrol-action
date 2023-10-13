FROM stackexchange/dnscontrol:4.4.1@sha256:b9b5f57d94f63dd7da0473f23bda3b87d465f50876ea96934072da5023bfc509

LABEL repository="https://github.com/chrisbrownie/dnscontrol-action"
LABEL maintainer="Chris Brown <chris@chrisbrown.au>"

LABEL "com.github.actions.name"="DNSControl"
LABEL "com.github.actions.description"="Deploy your DNS configuration to multiple providers."
LABEL "com.github.actions.icon"="cloud"
LABEL "com.github.actions.color"="yellow"

RUN dnscontrol version && \
    apk add --no-cache bash

COPY README.md entrypoint.sh bin/filter-preview-output.sh /
ENTRYPOINT ["/entrypoint.sh"]
