# utils.export alias
export alias untar="tar -zxvf "
export alias untar2="tar -xvjf "
#export alias targz="tar -zvcf $1 $2"
#export alias ungz="tar -zxvf $1"

export alias scan="grep -Rin --color"
export alias scan_case="grep -Rn --color -l" # case-sensitive
export alias scan_lite="grep -Rin --color -l" # only display filenames
export alias scan_fast="grep -Rin --color --mmap"

# This shows files with size (bytes) of at least N digits
export alias du_bytes='du -s * | grep "^[0-9]\{1\}"'
export alias du_kb='du -s * | grep "^[0-9]\{4\}"'
export alias du_mb='du -s * | grep "^[0-9]\{7\}"'
export alias du_gb='du -s * | grep "^[0-9]\{10\}"'
export alias du_n="du -s * | grep \"^[0-9]\{$1\}\""
