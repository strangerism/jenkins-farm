FROM strangerism/android-sdk-linphone-327:latest

MAINTAINER Massimo Virgilio

# Create Jenkins User
RUN useradd jenkins -m -s /bin/bash

RUN chown -R jenkins /home/jenkins
RUN chgrp -R jenkins /home/jenkins

# add jenkins to the android user group from android-sdk-linphone-327 image
RUN usermod -a -G android jenkins

# switch to jenkins user
USER jenkins

# Expose user HOME to docker build environment
ENV USER_HOME /home/jenkins

# Make easy access to build files for local development and testing
# VOLUME $USER_HOME

WORKDIR $USER_HOME

# Set Name Servers
COPY /files/resolv.conf /etc/resolv.conf

# # Install linphone
# ENV LINPHONE_HOME $USER_HOME/linphone-android


# RUN env
# RUN git clone https://github.com/BelledonneCommunications/linphone-android.git && cd $LINPHONE_HOME && ls -lrt

# RUN cd $ANDROID_SDK_HOME && ls -lrt
# RUN cd $ANDROID_NDK_HOME && ls -lrt

# RUN cd $LINPHONE_HOME && \
# 	git checkout tags/3.2.7 && \
#   	git submodule sync && git submodule update --init --recursive

# RUN cd $LINPHONE_HOME && ./prepare.py 

# RUN cd $LINPHONE_HOME && make 

