std.main:
    glue file
    file.read "/usr/flex/fuchsia/global_value"
    %to@
    [@] : + 1
    @to%
    file.write "/usr/flex/fuchsia/global_value"
    [%] : ""
    [%], a : ""
    if %a
    lxd /usr/flex/fuchsia/recommend
std.end: exit N