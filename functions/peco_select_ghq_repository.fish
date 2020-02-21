function peco_select_ghq_repository
  ghq list | peco | read line

  if [ $line ]
    cd (ghq list --full-path --exact $line)
    commandline -f repaint
  end
end
