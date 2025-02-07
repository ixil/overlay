# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=(python2_7 python3_{4,5,6})

inherit distutils-r1 git-r3 systemd

DESCRIPTION="Automatically reposit, organize, rename, and process large collections of files."
HOMEPAGE="https://github.com/TheChymera/repositorg"
SRC_URI=""
EGIT_REPO_URI="https://github.com/TheChymera/repositorg"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
IUSE="systemd"

DEPEND="
	>=dev-python/argh-0.26.2
	media-libs/mutagen
	systemd? ( sys-apps/systemd )
"
RDEPEND="${DEPEND}"

python_install() {
	distutils-r1_python_install
	if use systemd; then
		systemd_newunit "${FILESDIR}/${PN}_uuid.service" "${PN}_uuid@.service"
	fi
	dobin repositorg_uuid
}

src_test() {
	cd test_scripts/
	for i in *.sh; do
		./"$i" || die "Test $i failed"
	done
}
