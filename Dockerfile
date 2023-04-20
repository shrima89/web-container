FROM centos
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-* ; sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
RUN  dnf update -y && dnf install -y python38
COPY app.py /app/
COPY requirements.txt /app/
RUN pip3 install -r /app/requirements.txt
CMD python3 /app/app.py
