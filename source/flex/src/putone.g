std.main:
    glue file
    [%] : "1"
    file.write "/usr/flex/fuchsia/global_value"
    [%] : ""
    [%], a : ""
    if %a
    lxd /usr/flex/fuchsia/recommend
std.end: exit N