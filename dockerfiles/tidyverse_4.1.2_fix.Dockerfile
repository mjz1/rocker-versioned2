FROM rocker/rstudio:4.1.2

LABEL org.opencontainers.image.licenses="GPL-2.0-or-later" \
      org.opencontainers.image.source="https://github.com/rocker-org/rocker-versioned2" \
      org.opencontainers.image.vendor="Rocker Project" \
      org.opencontainers.image.authors="Carl Boettiger <cboettig@ropensci.org>"

RUN /rocker_scripts/install_tidyverse.sh


RUN apt-get update -qq
RUN apt-get -y --no-install-recommends install libbz2-dev liblzma-dev build-essential

RUN R -e 'update.packages(ask=F)'