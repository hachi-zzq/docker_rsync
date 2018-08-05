FROM instrumentisto/rsync-ssh

MAINTAINER hachi.zzq@gmail.com

COPY rsync_mirror /etc/periodic/15min/rsyncmirror

RUN chmod a+x /etc/periodic/15min/rsyncmirror &&\
	mkdir -p /opt/src &&\
	mkdir -p /opt/des

VOLUME ["/opt/src","/opt/des"]

CMD ["crond","-f"]

