function! Compile() abort


  let shellStr = "! g++"." ".expand('%:t')." "."-o"." ".expand('%:r')


  if expand('%:e') == 'c' || expand('%:e') == 'cpp'

    execute shellStr

  else 

    echo "This is not c or cpp file."

  endif

endfunction

command! CCompile call Compile()
