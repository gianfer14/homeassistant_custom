FROM homeassistant/raspberrypi4-homeassistant:stable
RUN apk add --update --no-cache \
    curl py-pip gstreamer gstreamer-tools \
    gst-plugins-ugly gst-plugins-good \
    gst-plugins-base py3-gst py3-gobject3

RUN ln -s /usr/lib/python3.8/site-packages/gi /usr/local/lib/python3.8/site-packages

#    usermod -a -G audio root && \
#    usermod -a -G pulse-access root
