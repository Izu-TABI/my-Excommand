function! Compile() abort


  let shellStr = "! sass". " " .expand('%:r').'.scss'." ".expand('%:r').'.css'

  if expand('%:e') == 'scss' || expand('%:e') == 'sass'

    execute shellStr

  else 

    echo "This is not scss file."

  endif

endfunction

command! ScssCmp call Compile()
