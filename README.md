# Chymeric Gentoo Overlay

An overlay for Gentoo, with various packages used and/or maintained by [TheChymera](https://github.com/TheChymera).
A number of the ebuilds available from this overlay are regularly copied from external sources (see respective commit mesages), and thus have a different maintainer.

If you are looking for the neuroscience software packages maintained by [TheChymera](https://github.com/TheChymera), use the [Gentoo Science](https://github.com/gentoo/sci) instead.

## Install

As per the [current Portage specifications](https://dev.gentoo.org/~zmedico/portage/doc/man/portage.5.html), overlays should be managed via `/etc/portage/repos.conf/`.
To enable this overlay make sure you are using a recent Portage version (at least `2.2.14`), and download our `.conf` file to the apropriate system directory (root access will likely be required):

```
mkdir /etc/portage/repos.conf
wget https://raw.githubusercontent.com/TheChymera/overlay/master/metadata/chymeric.conf -O /etc/portage/repos.conf/chymeric
```

Afterwards, simply run `emerge --sync`, and Portage should seamlessly make all our ebuilds availabl.
Many of our packages are available as live (`*-9999`) ebuilds, and also need manual unmasking in `/etc/portage/package.accept_keywords` before they can be emerged.

---

*Please report issues via the GitHub tracking system! Please fork and submit pull requests! We're happy to merge!*
