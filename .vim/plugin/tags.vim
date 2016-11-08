" get git dir
let gitdir=system("git rev-parse --git-dir | tr -d '\n'")
if empty(matchstr(gitdir , '^fatal:.*'))
  " if git, get ctags/cscope location
  let ctags=gitdir . '/tags'
  let cscope=gitdir . '/cscope.out'

  " if present, set ctags/cscope
  if filereadable(ctags)
    let &tags=ctags
  endif
  if filereadable(cscope)
    exe "cs add " . cscope
  endif
else
  unlet gitdir
endif
