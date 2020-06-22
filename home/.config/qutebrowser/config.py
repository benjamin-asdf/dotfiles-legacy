import dracula.draw

dracula.draw.blood(c, {
    'spacing': {
        'vertical': 6,
        'horizontal': 8
    }
})


config.bind('tb', 'config-cycle statusbar.hide true false')
config.bind("tt", 'config-cycle tabs.show never always')
config.bind('<Ctrl-Shift-j>', 'tab-next')
config.bind('<Ctrl-Shift-k>', 'tab-prev')
config.bind('J', 'scroll-page 0 1')
config.bind('K', 'scroll-page 0 -1')
config.bind('<Space><Space>', 'set-cmd-text :')

config.bind('<Ctrl-;>', 'enter-mode passthrough')
config.bind('<Ctrl-Space>', 'toggle-selection', mode='caret')

config.bind('<Escape>', 'leave-mode', mode='passthrough')
config.unbind('<Shift-Escape>', mode='passthrough')


c.tabs.position = "left"
c.tabs.max_width = 10
c.tabs.show = "never"

c.url.default_page = "https://searx.pofilo.fr/"
c.url.searchengines = { 'DEFAULT' : 'https://searx.pofilo.fr/?q={}',
                        'duck'    : 'https://duckduckgo.com/?q={}',
                        'wa'      : 'https://wiki.archlinux.org/?search={}'}

c.content.host_blocking.lists.append( str(config.configdir) + "/blocked-hosts")

c.editor.command = [ 'emacsclient', '-c', '{file}' ]

c.url.start_pages = [ c.url.default_page, "https://trello.com/b/kABlCnCj/ben" ]
