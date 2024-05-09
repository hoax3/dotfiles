return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      theme = 'doom',
      config = {
        header = {
	[[                                                     ]],
	[[  __  __                 __  __                      ]],
	[[ /\ \/\ \               /\ \/\ \  __                 ]],
	[[ \ \ `\\ \     __    ___\ \ \ \ \/\_\    ___ ___     ]],
	[[  \ \ , ` \  /'__`\ / __`\ \ \ \ \/\ \ /' __` __`\   ]],
	[[   \ \ \`\ \/\  __//\ \L\ \ \ \_/ \ \ \/\ \/\ \/\ \  ]],
	[[    \ \_\ \_\ \____\ \____/\ `\___/\ \_\ \_\ \_\ \_\ ]],
	[[     \/_/\/_/\/____/\/___/  `\/__/  \/_/\/_/\/_/\/_/ ]],
	[[                                                     ]],
  [[                  Hello, Friend                      ]],
  [[]],
  [[]],
  [[]],
        },
        center = {
          { action =  "Telescope find_files", desc = "Telescope Find Files", key = "f" },
        },
      },
    }
    end,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
}
