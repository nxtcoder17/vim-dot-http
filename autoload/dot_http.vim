if !exists("g:dot_http_env")
    let g:dot_http_env = 'dev'
endif 

if !exists("g:dot_http_env_file")
    let g:dot_http_env_file = "http-client.env.json"
endif

function! dot_http#DotHttpRun() 
    execute 'vne | setlocal buftype=nofile | setlocal bufhidden=hide | setlocal noswapfile | r! dot-http -e '. g:dot_http_env .' '. expand('%:p') . ' -l ' . line('.') . ' -n ' . g:dot_http_env_file
    normal gg
endfunction
