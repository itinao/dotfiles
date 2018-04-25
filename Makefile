curdir := `pwd`

default:
		@echo
		@echo "Usage:"
		@echo "   make [task]"
		@echo
		@echo "Tasks:"
		@echo "   link                     Execute ln"

link:
		ln -s $(curdir)/nvim ~/.config/nvim
