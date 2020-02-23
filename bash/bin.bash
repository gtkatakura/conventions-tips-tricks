#!/bin/bash

for file_path in ~/.termscripts/bin/*; do
  file_name="$(basename "$file_path" .bash)"
  alias $file_name="bash $file_path"
done
