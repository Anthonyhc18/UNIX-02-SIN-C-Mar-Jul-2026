# ============================================================================
#  Dockerfile — "receta" para construir la imagen del curso
# ============================================================================
#  (Tu texto original en español se mantiene aquí...)
# ============================================================================

# [NEW ANALYSIS] Kali Rolling is chosen as the base foundation for security research 
# due to its rolling release cycle, which ensures pentesting tools remain current 
# for lab exercises (BHB Cap. 3).
FROM kalilinux/kali-rolling:latest

# ----------------------------------------------------------------------------
# ENV: variables de entorno permanentes dentro del contenedor
# ----------------------------------------------------------------------------
# [NEW ANALYSIS] Defining these as global ENV variables creates a consistent 
# execution environment. Non-interactive mode is vital for automation to avoid 
# blocking the build on input requests (BHB Cap. 1: Environmental Setup).
ENV DEBIAN_FRONTEND=noninteractive \
    LANG=es_ES.UTF-8 \
    LC_ALL=es_ES.UTF-8 \
    TERM=xterm-256color

# ----------------------------------------------------------------------------
# Pre-respuesta a una pregunta interactiva de Wireshark
# ----------------------------------------------------------------------------
# [NEW ANALYSIS] Pre-configuring debconf bypasses interactive prompts, 
# ensuring that the build process proceeds unattended (BHB Cap. 3).
RUN echo "wireshark-common wireshark-common/install-setuid boolean false" \
    | debconf-set-selections

# ----------------------------------------------------------------------------
# RUN: ejecutar comandos durante la construcción de la imagen
# ----------------------------------------------------------------------------
# [NEW ANALYSIS] Consolidating commands into one RUN layer optimizes storage 
# and build speed by reducing image layers (BHB Cap. 3). Tools like gawk, sed, 
# and grep are essential engines for stream manipulation (BHB Cap. 2).
RUN apt-get update && apt-get install -y --no-install-recommends \
    neovim vim zsh bash-completion \
    perl make gawk sed grep \
    coreutils findutils procps less tree jq \
    man-db manpages manpages-posix \
    curl wget git git-lfs ca-certificates locales \
    shellcheck nmap masscan tcpdump tshark \
    netcat-traditional socat dnsutils whois traceroute mtr-tiny iproute2 net-tools iputils-ping \
    tor torsocks proxychains4 obfs4proxy \
    httpie \
    \
    # [NEW ANALYSIS] Using sed to modify configuration files demonstrates 
    # stream editing, a core concept for automating system tasks (BHB Cap. 2).
    && sed -i 's/# es_ES.UTF-8/es_ES.UTF-8/' /etc/locale.gen \
    && locale-gen \
    \
    # [NEW ANALYSIS] Cleaning apt cache in the same layer minimizes image footprint (BHB Cap. 3).
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# ----------------------------------------------------------------------------
# SHELL: qué intérprete usar en los siguientes RUN
# ----------------------------------------------------------------------------
# [NEW ANALYSIS] Explicitly setting the shell to bash ensures that subsequent 
# commands can utilize advanced shell features like arrays and logical operators (BHB Cap. 1).
SHELL ["/bin/bash", "-c"]

# ----------------------------------------------------------------------------
# WORKDIR: directorio de trabajo al entrar al contenedor
# ----------------------------------------------------------------------------
# [NEW ANALYSIS] Standardizing the working directory simplifies relative 
# path management for laboratory scripts (BHB Cap. 3).
WORKDIR /workspaces

RUN git config --system --add safe.directory '*' \
 && git config --system init.defaultBranch main \
 && git config --system pull.rebase false \
 && git lfs install --system

# ----------------------------------------------------------------------------
# CMD: comando que se ejecuta por defecto al arrancar el contenedor
# ----------------------------------------------------------------------------
# [NEW ANALYSIS] ZSH offers superior scripting and autocompletion features. 
# Here, a heredoc is used to inject custom prompt settings, showing how to 
# automate environment customization (BHB Cap. 1).
RUN chsh -s /usr/bin/zsh root
RUN cat >> /root/.zshrc <<'EOF'
PROMPT='%F{magenta}[Anthony-Herrera-UIDE]%f %F{magenta}%1 ~%f %(?.%F{green}MUYBIEN✓.%F{red}💀COJUDO💀)%f %F{magenta}%#%f '
EOF
CMD ["/usr/bin/zsh"]