#!/bin/sh

set -e -u


setup_autologin()
{
  echo "# liveuser user autologin" >> ${release}/etc/gettytab
  echo "liveuser:\\" >> ${release}/etc/gettytab
  echo ":al=liveuser:ht:np:sp#115200:" >> ${release}/etc/gettytab

  sed -i "" "/ttyv0/s/Pc/liveuser/g" ${release}/etc/ttys
  # echo "sh sysconfig.sh" >> ${release}/root/.login
  echo "startx" >> ${release}/ghostbsd/.login
  # echo 'if ($tty == ttyv0) then' >> ${release}/home/ghostbsd/.cshrc
  # echo 'if ($tty == ttyv0) then' >> ${release}/home/ghostbsd/.shrc
  # echo "  sudo netcardmgr" >> ${release}/home/ghostbsd/.cshrc
  # echo "  startx" >> ${release}/home/ghostbsd/.cshrc
  # echo "  startx" >> ${release}/home/ghostbsd/.shrc
  # echo "endif" >> ${release}/home/ghostbsd/.cshrc
  # echo "endif" >> ${release}/home/ghostbsd/.shrc
}
