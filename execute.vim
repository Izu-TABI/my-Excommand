

function! Execute() abort

  if expand('%:e') == 'scss' || expand('%:e') == 'sass'
    let shellStr = "sass". " " .expand('%:r').'.scss'." ".expand('%:r').'.css'

  elseif expand('%:e') == 'c' || expand('%:e') == 'cpp'
    let shellStr = "g++"." ".expand('%:t')." "."-o"." ".expand('%:r')."&"." "."./".expand('%:r')

  elseif expand('%:e') == 'py' || expand('%:e') == 'ipynb'
    let shellStr = "python3 %"

  else 
    echo "This format file is not supported."
    return "finish"

  endif

  execute 'T'.' '.shellStr

endfunction


command! Execute call Execute()





