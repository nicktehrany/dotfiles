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

config.bind('<Ctrl+w>', 'fake-key <Ctrl-Backspace>', mode='insert')

c.auto_save.session = True
c.colors.statusbar.url.success.https.fg = "white"
c.downloads.position = 'bottom'
#c.spellcheck.languages = ['en-US']
c.tabs.background = True
c.editor.command = ['nvim', '{}']
c.url.searchengines = {'DEFAULT': 'https://google.com/search?q={}'}
c.colors.webpage.darkmode.enabled = True
c.confirm_quit = ["always"]
c.content.headers.do_not_track = True
c.content.javascript.can_open_tabs_automatically = False
c.content.mute = True
c.content.pdfjs = False
c.downloads.remove_finished = 10
c.hints.leave_on_load = True
c.input.insert_mode.auto_leave = True
c.input.insert_mode.leave_on_load = True
c.search.incremental = True
c.statusbar.widgets = ['url', 'scroll', 'progress', 'tabs', 'history']
c.tabs.favicons.show = 'always'
c.tabs.last_close = 'startpage'
c.tabs.title.format = '{perc}{index} {protocol}: {current_title}'
c.url.default_page = 'https://google.com/'
c.url.start_pages = ['https://google.com/']

# Theme
config.source("gruvbox.py")
