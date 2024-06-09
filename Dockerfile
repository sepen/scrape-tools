FROM python:3.8-slim

RUN \ 
  pip install --upgrade pip && \
  pip install --no-cache-dir selenium && \
  pip install --no-cache-dir pyvirtualdisplay && \
  apt-get update -qq && \
  apt-get install -qq --no-install-recommends -y curl xvfb chromium chromium-driver && \
  apt-get autoremove --yes && \
  apt-get clean autoclean && \
  rm -rf /var/lib/{apt,dpkg,cache,log}

CMD ["bash"]
