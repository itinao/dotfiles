curdir := `pwd`

.DEFAULT_GOAL := help

nvim-link: ## Create nvim link
		ln -sfnv $(curdir)/nvim ~/.config/nvim

dotfiles-link: ## Create dotfiles link
		ln -sfnv $(curdir)/.screenrc ~/
		ln -sfnv $(curdir)/.gitconfig ~/
		ln -sfnv $(curdir)/.bashrc ~/
		ln -sfnv $(curdir)/.bash_profile ~/

help: ## Self-documented Makefile
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
		| sort \
		| awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

