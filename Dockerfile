FROM archlinux:base-devel
RUN pacman -Syu --noconfirm neovim tmux nodejs-lts-hydrogen git npm less stow
COPY ./config/ /root/dotfiles/
RUN cd ~/dotfiles; stow .; cd ..
CMD ["sleep", "infinity"]
