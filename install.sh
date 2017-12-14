#!/bin/sh
#
#  This program is free software; you can redistribute it and/or
#  modify it under the terms of the GNU General Public License as
#  published by the Free Software Foundation; either version 2 of the
#  License, or (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software Foundation,
#  Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA

if [ "$1" = "uninstall" ]; then
	rm -f /usr/bin/sparky-desktop
	rm -f /usr/bin/sparky-desktop-del
   	rm -rf /usr/share/icons/sparky/desktops
	rm -rf /usr/lib/sparky-desktop
	rm -f /usr/lib/sparky-aptus/inst/add-desktop.desktop
	rm -f /usr/lib/sparky-aptus/remove/remove-desktop.desktop
	rm -rf /usr/lib/sparkydesktop
	rm -rf /usr/share/sparky/sparky-desktop	
else
	cp bin/* /usr/bin/
	if [ ! -d /usr/share/icons/sparky/desktops ]; then
		mkdir -p /usr/share/icons/sparky/desktops
	fi
	cp icons/* /usr/share/icons/sparky/desktops/
	if [ ! -d /usr/lib/sparkydesktop/inst ]; then
		mkdir -p /usr/lib/sparkydesktop/inst
	fi
	cp libinst/* /usr/lib/sparkydesktop/inst/
	if [ ! -d /usr/lib/sparkydesktop/inst-arm ]; then
		mkdir -p /usr/lib/sparkydesktop/inst-arm
	fi
	cp libinst-arm/* /usr/lib/sparkydesktop/inst-arm/
	if [ ! -d /usr/lib/sparkydesktop/remove ]; then
		mkdir -p /usr/lib/sparkydesktop/remove
	fi
	cp libremove/* /usr/lib/sparkydesktop/remove/
	if [ ! -d /usr/lib/sparkydesktop/bin ]; then
		mkdir -p /usr/lib/sparkydesktop/bin
	fi
	cp libbin/* /usr/lib/sparkydesktop/bin/
	if [ ! -d /usr/lib/sparky-aptus/inst ]; then
		mkdir -p /usr/lib/sparky-aptus/inst
	fi
	cp libmain/add-desktop.desktop /usr/lib/sparky-aptus/inst/
	if [ ! -d /usr/lib/sparky-aptus/remove ]; then
		mkdir -p /usr/lib/sparky-aptus/remove
	fi
	cp libmain/remove-desktop.desktop /usr/lib/sparky-aptus/remove/
	if [ ! -d /usr/share/sparky/sparky-desktop ]; then
		mkdir -p /usr/share/sparky/sparky-desktop
	fi
	cp lang/* /usr/share/sparky/sparky-desktop/
fi
