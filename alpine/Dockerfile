FROM tiredofit/tinc
# FROM ghcr.io/tiredofit/docker-tinc
# FROM docker.io/tiredofit/docker-tinc

RUN apk add \
		--update-cache \
		frr \
        syncthing

# RUN apt update && apt install -y curl sudo

# # Syncthing
# # Add the release PGP keys:
# RUN sudo curl -o /usr/share/keyrings/syncthing-archive-keyring.gpg https://syncthing.net/release-key.gpg
# # Add the "stable" channel to your APT sources:
# RUN echo "deb [signed-by=/usr/share/keyrings/syncthing-archive-keyring.gpg] https://apt.syncthing.net/ syncthing stable" | sudo tee /etc/apt/sources.list.d/syncthing.list

# # tinc 1.1
# RUN curl -o tinc_1.1~pre18-1+b1_amd64.deb http://ftp.tw.debian.org/debian/pool/main/t/tinc/tinc_1.1~pre18-1+b1_amd64.deb
# RUN mkdir /etc/tinc

# RUN apt update && apt install -y iptables iputils-ping frr nano procps traceroute syncthing ./tinc_1.1~pre18-1+b1_amd64.deb

ENTRYPOINT ["/root/entry.sh"]

# /usr/lib/frr/frrinit.sh start

