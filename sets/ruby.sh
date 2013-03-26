# ruby.export alias
export alias be="rbenv exec bundle exec"
be_exec="rbenv exec $be"
export alias cap="$be_exec cap"
export alias spec="$be_exec spec"
export alias rake="$be_exec rake"
export alias rails="$be_exec rails"
export alias guard="$be_exec guard"
export alias thin="$be_exec thin -p 3000"
