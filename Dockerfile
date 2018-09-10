FROM centos/ruby-22-centos7:latest

USER root

RUN yum update -y && yum clean all

RUN yum install -y http://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && \
    yum install -y curl cabextract xorg-x11-font-utils fontconfig \
        lcms2 ghostscript xpdf pango wkhtmltopdf v8 v8-devel \
        https://imagemagick.org/download/linux/CentOS/x86_64/ImageMagick-libs-7.0.8-11.x86_64.rpm \
        https://downloads.sourceforge.net/project/mscorefonts2/rpms/msttcore-fonts-installer-2.6-1.noarch.rpm && \
    curl -L -o /usr/bin/sam2p https://github.com/pts/sam2p/releases/download/v0.49.4/sam2p.xstatic && \
    chmod +x /usr/bin/sam2p && \
    rm -f /etc/ImageMagick/policy.xml && \
    yum clean all

USER 1001
