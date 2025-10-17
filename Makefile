.PHONY: install install-tools uninstall clean help

help: ## Show this help message
	@echo "Available targets:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2}'

install-tools: ## Install required tools based on OS
	@echo "Installing tools for detected OS..."
	@chmod +x install_tools.sh
	@chmod +x tools/*.sh
	@./install_tools.sh

install: ## Install dotfiles (symlinks)
	@echo "Installing dotfiles..."
	@mkdir -p ~/.config/fish ~/.config/kitty ~/.config/neofetch
	@ln -sf "$(PWD)/fish/config.fish" "$(HOME)/.config/fish/config.fish"
	@ln -sf "$(PWD)/kitty/kitty.conf" "$(HOME)/.config/kitty/kitty.conf"
	@ln -sf "$(PWD)/neofetch" "$(HOME)/.config/neofetch"
	@echo "Dotfiles installed!"

install-all: install-tools install ## Install everything

uninstall: ## Remove dotfiles
	@echo "Removing dotfiles..."
	@rm -f ~/.config/fish/config.fish
	@rm -f ~/.config/kitty/kitty.conf
	@rm -rf ~/.config/neofetch
	@echo "Dotfiles removed!"

clean: ## Clean temporary files
	@find . -name "*.tmp" -delete
	@echo "Cleaned up!"