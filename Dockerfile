###################
# --- builder --- #
###################
FROM docker.io/debian:12-slim AS builder

RUN apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install -y \
      wget ca-certificates bzip2

WORKDIR /opt/wownero

RUN case "$(uname -m)" in \
      x86_64) ID="280753b0-3af0-4a78-a248-8b925e8f4593" ;; \
      aarch64* | arm64 | armv8*) ID="0869ffe3-eeff-4240-a185-168ca80fa1e3" ;; \
      armv7*) ID="ff0c4886-3865-4670-9bc6-63dd60ded0e3" ;; \
      *) echo "Unexpected architecture: $(uname -m)" && exit 1;; \
    esac && \
    wget https://git.wownero.com/attachments/${ID} && \
    tar -xjvf ${ID} --strip-components 1 && \
    rm -f ${ID}

##################
# --- runner --- #
##################
FROM docker.io/debian:12-slim AS runner

ENV PATH=/opt/wownero:${PATH}

RUN apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install -y tini ca-certificates && \
    apt-get clean && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt && \
    useradd -ms /bin/bash wow && \
    mkdir /opt/bitwownero && \
    ln -s /opt/bitwownero /home/wow/.wownero && \
    chown -R wow:wow /home/wow/.wownero && \
    chown -R wow:wow /opt/bitwownero

COPY --from=builder /opt/wownero/* /opt/wownero/

USER wow
WORKDIR /home/wow
VOLUME /opt/bitwownero
EXPOSE 34567 34568

ENTRYPOINT ["tini", "--", "/opt/wownero/wownerod"]
