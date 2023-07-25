FROM mongo:jammy

ADD https://github.com/idank/explainshell/releases/download/db-dump/dump.gz /tmp/dump.gz

COPY restore-dump.sh /usr/local/bin/
RUN restore-dump.sh
