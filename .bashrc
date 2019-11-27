function current_git_branch {
  git branch 2> /dev/null | perl -ne 'print " [$_]" if s/^\*\s+// && chomp'
}
PS1="\w\$(current_git_branch) "