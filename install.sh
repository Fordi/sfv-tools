#!/bin/bash
ERROR=0
HELP=0
SYMLINK=0
TARGET=
while ((${#}))
do
  __arg="${1:-}"; shift

  case "${__arg}" in
    -h|--help)
      HELP=1
      ;;
    -l|--link)
      SYMLINK=1
      ;;
    *)
      if [[ -z "$TARGET" ]]; then
        TARGET="${__arg}"
      else
        HELP=1
        ERROR=-1
        TARGET=
      fi
      ;;
  esac
done



if [[ $HELP == 1 || -z "$TARGET" ]]; then
  echo "./$(basename "$0") [-l] {executables path}" >&2
  echo "-l    symlink instead of copy" >&2
  exit $ERROR
fi

HERE="$(dirname "$(realpath "$0")")"

function install() {
  local file="$1"; shift;
  rm "$TARGET/$file" 2>/dev/null
  if [[ "$SYMLINK" == "1" ]]; then
    echo "Symlinking $HERE/$file to $TARGET/$file"
    ln -s "$HERE/$file" "$TARGET/$file"
  else
    echo "Copying $HERE/$file to $TARGET/$file"
    cp -dp "$HERE/$file" "$TARGET/$file"
  fi
}
install check-sfv
install make-sfv

