Plug 'autozimu/LanguageClient-neovim', {
                \ 'branch': 'next',
                \ 'do': 'bash install.sh',
                \ }

" Configuration
let g:LanguageClient_serverCommands = {
   \ 'cpp': ['ccls'],
   \ 'c': ['ccls'],
   \ 'rust': ['rust-analyzer'],
   \ 'python': ['pyls'],
   \ }

let g:LanguageClient_autoStart = 1
