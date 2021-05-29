.PHONY: packages
packages:
	./.scripts/install-packages

.PHONY: git
git:
	stow --no-folding -t ~ git

.PHONY: vim
vim:
	stow --no-folding -t ~ vim