FROM perl:slim

# https://packages.debian.org/stretch/perl/

RUN apt-get update && apt-get install -y --no-install-recommends \
    rxp cvs cron \
    libemail-mime-perl \
	&& rm -rf /var/lib/apt/lists/*

# farenda:
# de kie ricevi la retpoŝton, variantoj:
# - aldone instali fetchmail
# - uzi voko-helikon kaj dividu alven-dosierujon (/var/mail...?)
