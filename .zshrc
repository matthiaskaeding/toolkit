# Aliases and helper functions template for interactive shells.

# Quick commit alias; add flags or message short-hands as needed.
alias gc='git commit'

# Run make from the nearest directory containing a Makefile so the command
# works even when invoked from nested folders.
mk() {
  local dir root
  dir="$(pwd)"
  while [ "$dir" != "/" ]; do
    if [ -f "$dir/Makefile" ]; then
      root="$dir"
      break
    fi
    dir="$(dirname "$dir")"
  done

  if [ -n "$root" ]; then
    (cd "$root" && make "$@")
  else
    make "$@"
  fi
}
