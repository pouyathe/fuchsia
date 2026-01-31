std.main:
    glue string
	glue gcolor
	fcolor __gcolor__:blue
    std.echo ".fua> "
	fcolor __gcolor__:system
	get_n
	[%], a : ".ef ~.line"
	if %a
	lxd /usr/flex/fuchsia/newlined
    [%], versionoffuchsia : ".ef ~.version"
	if %versionoffuchsia
	lxd /usr/flex/fuchsia/fuchsia_ver
	[%], math : "*th 1"
	if %math
	lxd /usr/flex/fuchsia/putone
	[%], ww : ".ef ~*.int"
	if %ww
	lxd /usr/flex/fuchsia/printglobalintvalue
    [%], numh : "*edward"
    if %numh
    lxd /usr/flex/fuchsia/edward
	[%], mathp : "*th + 1"
	if %mathp
	lxd /usr/flex/fuchsia/add1
	infbe .ef
        fcd /usr/flex/fuchsia/unknwoncommend
        tonext .ef
        fecho %
        ln
        [%] : ""
        [%], a : ""
        if %a
        lxd /usr/flex/fuchsia/recommend

std.end: exit N
