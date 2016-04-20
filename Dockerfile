FROM taf7lwappqystqp4u7wjsqkdc7dquw/easternmoose
MAINTAINER “Emory Merryman” emory.merryman+DoTDeCocXJroqaWu@gmail.com>
ENV LUSER="emory" UID="1001" GID="1001"
RUN dnf update --assumeyes && dnf clean all
RUN groupadd ${LUSER} --guid ${GUID} && useradd --create-home --uid 1000 --gid 1000 ${USER}
USER ${USER}
WORKDIR /home/${USER}
