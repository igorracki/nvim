require("neotest").setup({
  adapters = {
    require("neotest-java")({
        ignore_wrapper = false, -- whether to ignore maven/gradle wrapper
    }),
    -- requires cargo-nextest to be installed locally
    require("neotest-rust") {
        args = { "--no-capture" },
        dap_adapter = "lldb",
    },
    require("neotest-go"),
  },
})

vim.keymap.set("n", "<leader>rt", function() require('neotest').run.run() end)
vim.keymap.set("n", "<leader>rf", function() require('neotest').run.run(vim.fn.expand("%")) end)
vim.keymap.set("n", "<leader>vtr", function() require("neotest").summary.open() end)
vim.keymap.set("n", "<leader>ctr", function() require("neotest").summary.close() end)
vim.keymap.set("n", "<leader>srt", function() require("neotest").run.stop() end)
vim.keymap.set("n", "<leader>rlt", function() require("neotest").run.run_last() end)
vim.keymap.set("n", "<leader>vto", function() require("neotest").output.open({ enter = true }) end)
vim.keymap.set("n", "<leader>oto", function() require("neotest").output_panel.open() end)
vim.keymap.set("n", "<leader>cto", function() require("neotest").output_panel.close() end)


function TestThis()
  require('neotest').run.run()
end

function TestFile()
  require("neotest").run.run(vim.fn.expand("%"))
end
