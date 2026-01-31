std.main:
	glue string
	glue file
	glue gcolor

	fcolor __gcolor__:blue
	file.read "/usr/flex/fuchsia/art.txt"
	fecho %
	ln
	fcolor __gcolor__:system
	std.echo "fuchsia"
	fcolor __gcolor__:cyan
	std.echo " v1.2_2 "
	fcolor __gcolor__:system
	std.echo "- based In glang "
	glang.version
	fcolor __gcolor__:lightgreen
	fecho %
	ln
	fcolor __gcolor__:system
	std.echo "see " 
	fcolor __gcolor__:lightgreen
	std.echo "http://glang.ct.ws/fuchsia.html"
	fcolor __gcolor__:system
	ln
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
	[%], edward : "*edward"
	if %edward
	lxd /usr/flex/fuchsia/edward
	[%], mathp : "*th + 1"
	if %mathp
	lxd /usr/flex/fuchsia/add1
	[%], as : "*exit"
	if %as
	lxd /usr/flex/fuchsia/runend
	[%], compil : "fuchc"
	if %compil
	lxd /usr/flex/fuchsia/cafile
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
