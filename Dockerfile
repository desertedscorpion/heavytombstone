FROM taf7lwappqystqp4u7wjsqkdc7dquw/easternmoose
MAINTAINER “Emory Merryman” emory.merryman+DoTDeCocXJroqaWu@gmail.com>
ENV LUSER="emory" UID="1001" GID="1001"
RUN dnf update --assumeyes && dnf clean all
RUN groupadd ${LUSER} --gid ${GID} && useradd --create-home --uid 1000 --gid 1000 ${LUSER}
USER ${LUSER}
WORKDIR /home/${LUSER}
