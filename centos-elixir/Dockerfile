FROM centos:7

RUN yum -y -q update && yum -y -q upgrade

RUN yum -y groupinstall "Development Tools" "C Development Tools and Libraries"

RUN yum -y install ncurses-devel openssl-devel procps

COPY ./install_elixir_asdf.sh .

RUN ./install_elixir_asdf.sh

RUN echo ". $HOME/.asdf/asdf.sh" >> "$HOME/.bashrc"
RUN echo ". $HOME/.asdf/completions/asdf.bash" >> "$HOME/.bashrc"

SHELL ["/bin/bash", "-c"]
