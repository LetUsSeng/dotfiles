setup-tmux:
	@echo "Setting up tmux Config"
	@ln -sf "$(shell pwd)/tmux/.tmux.conf" "$(HOME)/.tmux.conf"

install-tpm:
	@echo "Installing tpm"
	@git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

.PHONY: setup-tmux
