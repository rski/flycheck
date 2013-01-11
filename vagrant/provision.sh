#!/bin/sh
# setup.sh --- Provision a Vagrant VM for Flycheck testing
# Copyright (C) 2013  Sebastian Wiesner <lunaryorn@gmail.com>

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

# Basic utilities
apt-get install -yy make

# For apt-add-repository
apt-get install -yy python-software-properties

# Add repositories to fresh up versions
apt-add-repository ppa:cassou/emacs  # Emacs 24
apt-add-repository ppa:ondrej/php5   # PHP 5.4

# System upgrade
apt-get update -qq

# Install Emacs
apt-get install -yy emacs24 emacs24-el emacs24-common-non-dfsg
apt-get install -yy emacs-snapshot-el emacs-snapshot

# Install dependencies for various checkers straight from the repos

# Bash checker
apt-get install -yy bash

# PHP
apt-get install -yy php5-cli

# Python checkers
# Install Python checker tools
pip install flake8
pip install pylint

# LaTeX checkers
apt-get install -yy chktex
apt-get install -yy lacheck

# XML Checker
apt-get install -yy xmlstarlet

# Zsh checker
apt-get install -yy zsh
