

function! Execute() abort

if expand('%:e') == 'scss' || expand('%:e') == 'sass'

  let shellStr = "! sass". " " .expand('%:r').'.scss'." ".expand('%:r').'.css'

  execute 'T'.' '.shellStr

elseif expand('%:e') == 'c' || expand('%:e') == 'cpp'

  let shellStr = "! g++"." ".expand('%:t')." "."-o"." ".expand('%:r')."&"." "."./".expand('%:r')

  execute 'T'.' '.shellStr

elseif expand('%:e') == 'py' || expand('%:e') == 'ipynb'

  let shellStr = "! python3 %"

  execute 'T'.' '.shellStr

else 
  echo "This format file is not supported."

endif

endfunction


command! Execute call Execute()





