function! Execute() abort


  let shellStr = "! python3 %"


  if expand('%:e') == 'py'

    execute shellStr

  else 

    echo "This is not a py file."

  endif

endfunction

command! PyExecute call Execute()

