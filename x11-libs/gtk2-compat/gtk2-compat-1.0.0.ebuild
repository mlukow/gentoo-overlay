# Copyright 2014-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3 autotools

DESCRIPTION="Simulates the presence of GTK+2, but tries to use GTK+3"
HOMEPAGE="https://github.com/openSUSE/gtk2-compat"
EGIT_REPO_URI="https://github.com/openSUSE/${PN}.git"
KEYWORDS="amd64"

LICENSE="GPL-2"
SLOT="0"

RDEPEND="
	x11-libs/gtk+:3
"
DEPEND="${RDEPEND}"

src_prepare() {
	default
	eautoreconf
}
