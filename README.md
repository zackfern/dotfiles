# My Dots & Docs
- These are my dotfiles (as of 2018-01-13). There are many like them, but these are mine.
- This is also my personal documentation outlining the process of setting up a new laptop.

## New Laptop
### Programs to Install
- [Homebrew](https://brew.sh)
- [iTerm 2](https://www.iterm2.com/)

### System Preferences
- **Disable Smart Quotes & Stuff**
  - **Navigate to:** System Preferences » Keyboard » Text
  - **Uncheck:** Correct spelling, capitalize automatically, add period, etc.
- **Make buttons tab-able**
  - **Navigate to:** System Preferences » Keyboard » Shortcuts
  - **Click:** All Controls
- **Enable Cmd+F3 for Desktop**
  - **Navigate to:** System Preferences » Keyboard » Shortcuts » Mission Control
  - **Find:** Show Desktop
  - **Add the Shortcut**

## Dotfile Install
### VS Code
- `cd $HOME/Library/Application Support/Code/User`
- `ln -s ~/dotfiles/vscode/settings.json ./`
- `ln -s ~/dotfiles/vscode/keybindings.json ./`
