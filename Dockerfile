# Dockerfile for binder
# Reference: https://github.com/sagemath/sage-binder-env

FROM sagemath/sagemath:9.1

RUN sage -pip install jupyterlab

# Copy the contents of the repo in ${HOME}
COPY --chown=sage:sage . ${HOME}
