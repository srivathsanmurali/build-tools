FROM fedora:28

RUN dnf -yq upgrade && \
    dnf clean all

RUN dnf -y groupinstall "Development Tools" "C Development Tools and Libraries"

RUN dnf -y install ncurses-devel openssl-devel procps

COPY ./install_elixir_asdf.sh .

RUN ./install_elixir_asdf.sh

RUN echo ". $HOME/.asdf/asdf.sh" >> "$HOME/.bashrc"
RUN echo ". $HOME/.asdf/completions/asdf.bash" >> "$HOME/.bashrc"

SHELL ["/bin/bash", "-c"]
