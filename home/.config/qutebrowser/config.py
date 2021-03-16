import dracula.draw

dracula.draw.blood(c, {
    'spacing': {
        'vertical': 6,
        'horizontal': 8
    }
})

# searx instances
# https://search.snopyta.org/
# https://searx.pofilo.fr





# ambrevar
# c.auto_save.session = True
# c.completion.shrink = True
# c.confirm_quit = ["downloads"]
# c.content.cache.size = 5242880
# c.downloads.location.directory = "~/temp"
# c.downloads.location.prompt = False
# c.downloads.location.remember = True
# c.editor.command = ["emacsclient", "+{line}:{column}", "{}"]
# c.hints.scatter = False
# c.hints.uppercase = True
# c.input.partial_timeout = 2000
# c.tabs.tabs_are_windows = True
# c.new_instance_open_target = "window"
# c.tabs.show = "multiple"
# c.window.title_format = "{title}{title_sep}{host}"
## lazy_restore does not work when idle.
# c.session.lazy_restore = True


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

# "https://searx.bbaovanc.com/"
c.url.default_page = "https://searx.fmac.xyz/"


c.url.searchengines = {
    'DEFAULT': 'https://searx.fmac.xyz/?q={}',
    'duck'   : 'https://duckduckgo.com/?q={}',
    'wa'     : 'https://wiki.archlinux.org/?search={}',
    "so"     : "http://stackoverflow.com/search?q={}",
    "leo"    : "http://dict.leo.org/frde/index_de.html#/search={}",
    "aur"    : "https://aur.archlinux.org/packages.php?O=0&K={}&do_Search=Go",
    "yt"     : "http://www.youtube.com/results?search_query={}",
    "goo"    : "https://www.google.com/search?sxsrf={}",
    'gg'     : 'https://g4gsearch.com/ws/search/search?a=true&c=%7B%7D&e=true&m&p=1&q={}&s=_score&w=%5B%5D',
}


c.content.host_blocking.lists.append( str(config.configdir) + "/blocked-hosts")

# c.editor.command = [ 'emacsclient', '-c', '{file}' ]
# c.editor.command = [ 'emacsclient', '{file}', '-s $(fd . /run/user/1000/emacs/)' ]
c.editor.command = [ 'sh', '/home/benj/.homesick/repos/dotfiles/home/.local/bin/scripts/ec.sh', '{file}' ]

c.url.start_pages = [ c.url.default_page, "https://trello.com/b/kABlCnCj/ben" ]
