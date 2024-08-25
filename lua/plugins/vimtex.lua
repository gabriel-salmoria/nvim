return {
    "lervag/vimtex",
    lazy = false,
    init = function()
        -- VimTeX configuration
        vim.g.vimtex_compiler_method = "latexmk"
        vim.g.vimtex_compiler_latexmk = {
            aux_dir = '.aux_files',
            options = {
                '-pdf',
                '-silent',
                '-interaction=nonstopmode',
                '-synctex=0',
                '-auxdir=.aux_files',  -- Store auxiliary files in a hidden directory
            }
        }
        vim.g.vimtex_view_method = "zathura"

        -- Prevent VimTeX from opening the quickfix window automatically
        vim.g.vimtex_quickfix_mode = 0
        vim.g.vimtex_quickfix_open_on_warning = 0

        -- Auto-create .aux_files directory before compilation
        vim.api.nvim_create_autocmd("BufWritePost", {
            pattern = "*.tex",
            callback = function()
                local aux_dir = ".aux_files"
                if not vim.loop.fs_stat(aux_dir) then
                    vim.fn.system({ "mkdir", "-p", aux_dir })
                end
            end,
        })
    end
}
