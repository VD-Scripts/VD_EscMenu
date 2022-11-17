fx_version 'adamant'
game 'gta5'

ui_page "html/ui.html"

client_scripts {
    "client.lua"
}
server_scripts {
    "@vrp/lib/utils.lua",
    "server.lua"
}

files {
    "html/style/style.css",
    "html/java/js.js",
    "html/ui.html"
}