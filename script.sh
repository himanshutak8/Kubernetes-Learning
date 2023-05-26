function add_fstab_entry () {
  local FS="${1}"
  local MOUNT="${2}"
  local FS_TYPE="${3}"
 local OPTS="${4}"
  if ! grep -q "${FS}" /etc/fstab ; then
    echo "${FS} ${MOUNT} ${FS_TYPE} ${OPTS} 0 0" >> /etc/fstab
  fi
}

