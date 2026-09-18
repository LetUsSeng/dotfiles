neovim:
	ln -sf $(CURDIR)/nvim $$HOME/.config/nvim

bashrc:
	ln -s $(CURDIR)/bash/.bashrc $$HOME/.bashrc

waybar:
	ln -s $(CURDIR)/waybar $$HOME/.config/waybar

starship:
	ln -s $(CURDIR)/starship/starship.toml $$HOME/.config/starship.toml

hypr:
	ln -sf $(CURDIR)/hypr $$HOME/.config/hypr

wezterm:
	ln -sf $(CURDIR)/wezterm $$HOME/.config/wezterm

.PHONY: waybar neovim bashrc starship hypr wezterm
