#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Использование: $0 <каталог-с-логами>"
  exit 1
fi

log_dir="$1"
timestamp=$(date +"%Y%m%d_%H%M%S")
archive_dir="archives"
archive_name="logs_archive_${timestamp}.tar.gz"

mkdir -p "$archive_dir"

tar -czf "$archive_dir/$archive_name" "$log_dir"

echo "Архив создан: $archive_dir/$archive_name"