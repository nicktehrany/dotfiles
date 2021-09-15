config.load_autoconfig(True)

config.unbind("+")
config.unbind("-")
config.unbind("=")
config.bind("z+", "zoom-in")
config.bind("z-", "zoom-out")
config.bind("zz", "zoom")

config.unbind("O")
config.unbind("T")
config.unbind("th")
config.unbind("tl")
config.bind("O", "set-cmd-text :open {url:pretty}")
config.bind("T", "set-cmd-text :open -t {url:pretty}")
config.bind("t", "set-cmd-text -s :open -t")

config.unbind("<ctrl+tab>")
config.bind("<ctrl+tab>", "tab-next")
config.bind("<ctrl+shift+tab>", "tab-prev")

c.auto_save.session = True
c.colors.statusbar.url.success.https.fg = "white"
c.downloads.position = 'bottom'
#c.spellcheck.languages = ['en-US']
c.tabs.background = True
c.editor.command = ['nvim', '{}']
c.url.searchengines = {'DEFAULT': 'https://google.com/search?q={}'}

config.source("gruvbox.py")
