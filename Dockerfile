FROM devkitpro/devkitarm

# Install required packages
RUN dkp-pacman -Syyu --noconfirm && \
    dkp-pacman -S --needed --noconfirm devkitARM && \
    dkp-pacman -S --needed --noconfirm ndstool && \
    dkp-pacman -S --needed --noconfirm python3 python3-pip && \
    yes | dkp-pacman -Scc

# Install Pillow
RUN pip install Pillow

# Set environment variable
ENV DEVKITARM=${DEVKITPRO}/devkitARM

