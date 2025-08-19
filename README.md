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
- **Disable automatic keyboard brightness**
  - **Navigate to:** System Preferences » Keyboard » Keyboard
  - **Uncheck:** Adjust keyboard brightness in low light
- **Make buttons tab-able**
  - **Navigate to:** System Preferences » Keyboard » Shortcuts
  - **Click:** All Controls
- **Enable Cmd+F3 for Desktop**
  - **Navigate to:** System Preferences » Keyboard » Shortcuts » Mission Control
  - **Find:** Show Desktop
  - **Add the Shortcut**
- **Disable annoying Spaces features**
  - **Navigate to:** System Preferences » Mission Control
  - **Disable:**
    - Automatically rearrange Spaces based on most recent use
    - When switching to an application, switch to a Space with open windows for the application
- **Enable double tap to drag**
  - **Navigate to:** System Preferences » Accessibility » Mouse & Trackpad
  - **Click:** Trackpad Options
  - **Check:** Enable dragging: [without drag lock]
- **Enable control + scroll to zoom**
  - **Navigate to:** System Preferences » Accessibility » Zoom
  - **Click:** Use scroll gesture with modifierk eys to zoom
- **Setup hot corners**
  - **Navigate to:** System Preferences » Desktop & Dock
  - **Click:** Hot Corners...
  - **Set to:**
    | **-** | **Mission Control** |
    |:-:|:-:|
    | **Desktop** | **-** |
- **Disable drag window tiling:**
  - **Navigate to:** System Preferences » Desktop & Dock
  - **Disable:**
    - Drag windows to screen edges to tile
    - Drag windows to menu bar to fill screen
- **Double-click to minimize**
  - **Navigate to:** System Preferences » Desktop & Dock
  - **Change:** Double-click a window's title bar to: Minimize
   
### Misc Commands
- **Disable desktop icons**
  - Run `defaults write com.apple.finder CreateDesktop false && killall Finder`
  - To re-enable: `defaults write com.apple.finder CreateDesktop true && killall Finder`
- **Allow repeating keys when you press & hold**
  - Run `defaults write -g ApplePressAndHoldEnabled -bool false`

## Dotfile Install
### VS Code
- `cd $HOME/Library/Application\ Support/Code/User`
- `ln -s ~/dotfiles/vscode/settings.json ./`
- `ln -s ~/dotfiles/vscode/keybindings.json ./`
