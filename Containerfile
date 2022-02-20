FROM almalinux:8.5

# install nomad
RUN dnf update -y && \
	dnf install -y dnf-plugins-core && \
	dnf config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo && \
	dnf check-update && \
	dnf install -y consul && \
	dnf clean all
