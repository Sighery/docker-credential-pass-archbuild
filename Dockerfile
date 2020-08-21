FROM sighery/archbuilder:latest AS builder

USER builder

COPY --chown=builder ./docker-credential-pass/* package/
WORKDIR package

RUN makepkg -s --needed --noconfirm --noprogressbar

CMD ["/bin/bash"]
