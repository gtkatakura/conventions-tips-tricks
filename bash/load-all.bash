bash_files=(docker-aliases flatpak-aliases git-aliases prompt)

for bash_file in ${bash_files[@]}; do
  source ./$bash_file.bash
done