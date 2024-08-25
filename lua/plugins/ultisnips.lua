return {
    'SirVer/ultisnips',
    ft = 'tex',

    config = function()

        vim.g.UltiSnipsExpandTrigger="<tab>"
        vim.g.UltiSnipsJumpForwardTrigger="<c-b>"
        vim.g.UltiSnipsJumpBackwardTrigger="<c-z>"
        vim.g.UltiSnipsSnippetDirectories = { '.snippets' }

    end

}
