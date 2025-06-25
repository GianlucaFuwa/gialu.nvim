return {
    'Pangoraw/Neige.jl',
    -- init = function()
    --     require('neige').instantiate({ popup = true })
    -- end,
    config = function()
        require("neige").setup({
            python_exe = "python",
            julia_exe = "julia",
            julia_env = ".",
            julia_opts = {
                threads = "auto",
                quiet = false,
            },
            julia_load_revise = true,
            icons = {
                failure = "✗",
                success = "✓",
                loading = "🗘",
            },
            hl = {
                failure = "DiagnosticError",
                success = "DiagnosticInfo",
                loading = "DiagnosticInfo",
            },
            -- split = ":FloatermNew --height=0.4 --wintype=split --position=bottom --name=julia-repl",
            clear_on_start = true,
            -- debug_logging = true,
        })
    end,
}

