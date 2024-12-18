###################
# --- builder --- #
###################
FROM docker.io/debian:12-slim AS builder

RUN apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install -y \
      wget ca-certificates bzip2

WORKDIR /opt/wownero

ARG VERSION="v0.11.3.0"
RUN case "$(uname -m)" in \
      x86_64) FILE="wownero-x86_64-linux-gnu-${VERSION}.tar.bz2" ;; \
      aarch64* | arm64 | armv8*) FILE="wownero-aarch64-linux-gnu-${VERSION}.tar.bz2" ;; \
      armv7*) FILE="wownero-arm-linux-gnueabihf-${VERSION}.tar.bz2" ;; \
      *) echo "Unexpected architecture: $(uname -m)" && exit 1 ;; \
    esac && \
    wget https://codeberg.org/wownero/wownero/releases/download/${VERSION}/${FILE} && \
    tar -xjvf ${FILE} --strip-components 1 && \
    rm -f ${FILE}

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
