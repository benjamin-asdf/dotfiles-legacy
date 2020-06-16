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

config.bind('<Escape>', 'leave-mode', mode='passthrough')
config.bind('<Shift-Escape>', 'null', mode='passthrough')


c.tabs.position = "left"
c.tabs.max_width = 10
c.tabs.show = "never"

c.url.default_page = "https://searx.pofilo.fr/"
c.url.searchengines = { 'DEFAULT' : 'https://searx.pofilo.fr/?q={}',
                        'duck' :  'https://duckduckgo.com/?q={}' }


# TODO that would be so awesome to have properly with emacsclient
# c.editor.command = [ "/home/benj/repos/emacs/lib-src/emacsclient -c {file}" ]
c.editor.command = [ "vim {file}" ]


c.url.start_pages = [ c.url.default_page, "https://trello.com/b/kABlCnCj/ben" ]
