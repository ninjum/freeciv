#!/bin/bash -e
#/***********************************************************************
# Freeciv - Copyright (C) 2022 The Freeciv project
#   This program is free software; you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation; either version 2, or (at your option)
#   any later version.
#
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#
#***********************************************************************/

if test "$1" = "-h" || test "$1" = "--help" || test "$1" = "" || test "$2" = "" ; then
  echo "Usage: $(basename $0) <target file> <build root directory>"
  exit
fi

export BDIR="$(cd ${2} | exit 1 ; pwd)"

cd "$(dirname $0)"

cp "${1}.in" "${BDIR}/${1}"
