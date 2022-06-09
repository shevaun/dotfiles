function ruby_files() {
  xargs ls -1 2>/dev/null | grep '\.rb$'
}

function spec_files() {
  xargs ls -1 2>/dev/null | grep '_spec\.rb$'
}

function uncommitted() {
  # first command is staged changes, second is new files and unstaged changes
  echo "$(git diff --name-only --cached)\n$(git ls-files --others --exclude-standard --modified)"
}

function branch_changes() {
  git diff --name-only main
}

function uncommitted_rubocop() {
  uncommitted | ruby_files | xargs bundle exec rubocop
}

function branch_rubocop() {
  branch_changes | ruby_files | xargs bundle exec rubocop
}

function uncommitted_rspec() {
  bundle exec rspec $(uncommitted | spec_files)
}

function branch_rspec() {
  bundle exec rspec $(branch_changes | spec_files)
}
