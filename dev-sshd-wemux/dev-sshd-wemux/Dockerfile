FROM ngenetzky/dev-base:0.0.2
LABEL \
    maintainer="Nathan@Genetzky.us"

# Set up for pairing with wemux.
RUN git clone git://github.com/zolrath/wemux.git /usr/local/share/wemux \
    && ln -s /usr/local/share/wemux/wemux /usr/local/bin/wemux \
    && cp /usr/local/share/wemux/wemux.conf.example /usr/local/etc/wemux.conf \
    && echo "host_list=(root)" >> /usr/local/etc/wemux.conf

# Set up SSH. We set up SSH forwarding so that transactions like git pushes
# from the container happen magically.
RUN apt-get update && apt-get install -y \
    openssh-server \
    && apt-get clean && rm -rf /var/lib/apt/lists/* \
    && mkdir /var/run/sshd \
    && echo "AllowAgentForwarding yes" >> /etc/ssh/sshd_config

RUN echo 'root:root' | chpasswd \
    && sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# Define 'dev' USER
# RUN useradd dev -d /home/dev -m -s /bin/bash \
#     && adduser dev sudo \
#     && echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
# USER dev

COPY authorized_keys /root/.ssh/authorized_keys
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
