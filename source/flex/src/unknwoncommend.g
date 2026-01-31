std.main:
    glue gcolor
    fcolor __gcolor__:red
    std.echo "fuchsia :"
    fcolor __gcolor__:system
    fcolor __gcolor__:cyan
    std.echo " No function or value is be with this name."
    fcolor __gcolor__:system
    ln
    [%] : ""
    [%], a : ""
    if %a
    lxd /usr/flex/fuchsia/recommend
std.end: exit N