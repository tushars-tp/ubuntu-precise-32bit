FROM scratch

# File Author / Maintainer
MAINTAINER Tushar Sakhadeo

# Customised version of https://partner-images.canonical.com/core/precise/current/ubuntu-precise-core-cloudimg-i386-root.tar.gz
# Adds openssh-server managed by supervisor and some docker bug fixes
ADD ubuntu-precise-custom-cloudimg-i386-root.tar.gz /

# expose ssh port
EXPOSE 22

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/supervisord.conf"]