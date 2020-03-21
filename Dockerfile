FROM debian:stable-slim

ENV AWSCLI_URL=https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip
ENV AWSCLI_SIGNATURE_URL=${AWSCLI_URL}.sig

COPY awspgp.pub /tmp/awspgp.pub

RUN sed -i'' -e '/^path-exclude \/usr\/share\/groff\/\*/d' /etc/dpkg/dpkg.cfg.d/docker \
  && apt-get update && apt-get install -y gnupg curl unzip groff-base less \
  && cd /tmp \
  && gpg --import awspgp.pub \
  && curl -o awscliv2.zip ${AWSCLI_URL} \
  && curl -o awscliv2.sig ${AWSCLI_SIGNATURE_URL} \
  && gpg --verify awscliv2.sig awscliv2.zip \
  && unzip awscliv2.zip \
  && ./aws/install \
  && rm -rf /tmp/* \
  && apt-get --purge -y autoremove gnupg curl unzip \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["aws"]
