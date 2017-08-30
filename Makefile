rbm=./rbm/rbm

all: release

release: submodule-update
	$(rbm) build release --target release --target torbrowser-all

release-linux-x86_64: submodule-update
	$(rbm) build release --target release --target torbrowser-linux-x86_64

release-linux-i686: submodule-update
	$(rbm) build release --target release --target torbrowser-linux-i686

release-windows-i686: submodule-update
	$(rbm) build release --target release --target torbrowser-windows-i686

release-osx-x86_64: submodule-update
	$(rbm) build release --target release --target torbrowser-osx-x86_64

alpha: submodule-update
	$(rbm) build release --target alpha --target torbrowser-all

alpha-linux-x86_64: submodule-update
	$(rbm) build release --target alpha --target torbrowser-linux-x86_64

alpha-linux-i686: submodule-update
	$(rbm) build release --target alpha --target torbrowser-linux-i686

alpha-windows-i686: submodule-update
	$(rbm) build release --target alpha --target torbrowser-windows-i686

alpha-osx-x86_64: submodule-update
	$(rbm) build release --target alpha --target torbrowser-osx-x86_64

product: submodule-update
	$(rbm) build release --target product --target torbrowser-all

product-linux-x86_64: submodule-update
	$(rbm) build release --target product --target torbrowser-linux-x86_64

product-linux-i686: submodule-update
	$(rbm) build release --target product --target torbrowser-linux-i686

product-windows-i686: submodule-update
	$(rbm) build release --target product --target torbrowser-windows-i686

product-osx-x86_64: submodule-update
	$(rbm) build release --target product --target torbrowser-osx-x86_64

beta: submodule-update
	$(rbm) build release --target beta --target torbrowser-all

beta-linux-x86_64: submodule-update
	$(rbm) build release --target beta --target torbrowser-linux-x86_64

beta-linux-i686: submodule-update
	$(rbm) build release --target beta --target torbrowser-linux-i686

beta-windows-i686: submodule-update
	$(rbm) build release --target beta --target torbrowser-windows-i686

beta-osx-x86_64: submodule-update
	$(rbm) build release --target beta --target torbrowser-osx-x86_64

nightly: submodule-update
	$(rbm) build release --target nightly --target torbrowser-all

nightly-linux-x86_64: submodule-update
	$(rbm) build release --target nightly --target torbrowser-linux-x86_64

nightly-linux-i686: submodule-update
	$(rbm) build release --target nightly --target torbrowser-linux-i686

nightly-windows-i686: submodule-update
	$(rbm) build release --target nightly --target torbrowser-windows-i686

nightly-osx-x86_64: submodule-update
	$(rbm) build release --target nightly --target torbrowser-osx-x86_64

alpha_nightly: submodule-update
	$(rbm) build release --target alpha_nightly --target torbrowser-all

alpha_nightly-linux-x86_64: submodule-update
	$(rbm) build release --target alpha_nightly --target torbrowser-linux-x86_64

alpha_nightly-linux-i686: submodule-update
	$(rbm) build release --target alpha_nightly --target torbrowser-linux-i686

alpha_nightly-windows-i686: submodule-update
	$(rbm) build release --target alpha_nightly --target torbrowser-windows-i686

alpha_nightly-osx-x86_64: submodule-update
	$(rbm) build release --target alpha_nightly --target torbrowser-osx-x86_64

testbuild: submodule-update
	$(rbm) build release --target testbuild --target torbrowser-all

testbuild-linux-x86_64: submodule-update
	$(rbm) build release --target testbuild --target torbrowser-linux-x86_64

testbuild-linux-i686: submodule-update
	$(rbm) build release --target testbuild --target torbrowser-linux-i686

testbuild-windows-i686: submodule-update
	$(rbm) build release --target testbuild --target torbrowser-windows-i686

testbuild-osx-x86_64: submodule-update
	$(rbm) build release --target testbuild --target torbrowser-osx-x86_64

hardened-linux-x86_64: submodule-update
	$(rbm) build release --target hardened --target torbrowser-linux-x86_64

submodule-update:
	git submodule update --init

fetch: submodule-update
	$(rbm) fetch

clean: submodule-update
	./tools/clean-old

clean-dry-run: submodule-update
	./tools/clean-old --dry-run

