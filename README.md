

# macOS System Settings Configuration

## Display Settings
Configure display for optimal development work:

1. **Scale and Night Shift**
   - Go to `System Settings > Displays`
   - Choose "More Space" scaling option
   - Enable Night Shift for eye comfort

2. **Power Management** (for external displays)
   - Navigate to `Advanced` settings
   - Enable "Prevent automatic sleeping on power adapter when display is off"

## Trackpad and Accessibility

### Three Finger Drag
1. Go to `System Settings > Accessibility > Pointer Control`
2. Select `Trackpad Options`
3. Enable "Enable dragging" and choose "Three finger drag"

### Motion Settings
- Go to `System Settings > Accessibility > Display`
- Enable "Reduce motion" for better performance

## Application Management

### Keep Essential Apps Only
Recommended core applications:
- **Finder** - Configure with path bar and status bar visible
- **Safari** - For web browsing
- **System Settings** - For system configuration

### Finder Configuration
1. Open Finder
2. Go to `View` menu
3. Enable "Show Path Bar" and "Show Status Bar"
4. Tip: Ctrl+click the path bar icon to copy the current path

## Desktop & Dock

### Dock Settings
1. Go to `System Settings > Desktop & Dock`
2. Configure the following:
   - Enable "Automatically hide and show the Dock"
   - Adjust Dock size and magnification to preference
   - Position dock on left or right (not bottom for more screen space)

### Hot Corners
- Set up screen saver activation in bottom corner
- Configure Mission Control in bottom corner

### Mission Control
- Enable "Displays have separate spaces" for multi-monitor setups
- Disable "Automatically rearrange Spaces based on most recent use"

## Control Center

### Accessibility Shortcuts
- Show in Control Center, not in menu bar
- Test functionality after setup

### Spotlight
- Remove Spotlight from menu bar (keep keyboard shortcut)

## Mouse and Hover Settings

### Accessibility Zoom
1. Go to `System Settings > Accessibility > Zoom`
2. Configure Hover Text:
   - Text size: 32pt
   - Choose preferred font
   - Set activation modifier to Option/Alt
   - Customize colors as needed

## Appearance

### Color Scheme
1. Go to `System Settings > Appearance`
2. Set highlight color and accent color (recommended: purple)
3. Set appearance to "Auto" for automatic dark/light mode switching

## Keyboard Configuration

### Key Repeat Settings
1. Go to `System Settings > Keyboard`
2. **Critical for smooth vim navigation:**
   - Set "Key repeat rate" to fastest setting
   - Set "Delay until repeat" to shortest setting

### Input Sources
1. Add input methods as needed (e.g., Pinyin for Chinese)
2. **Important:** Do NOT check "Use the CAPS LOCK key to switch to and from U.S."

### Optional: Unicode Hex Input
Add Unicode Hex Input for special characters:
- ∀ (for all): Option + 2200
- ∃ (exists): Option + 2203
- ¬ (not): Option + 00ac
- ∧ (and): Option + 2227

### Function Key Behavior
- Set fn key to "Do Nothing" for more control

## Keyboard Shortcuts

### Essential macOS Shortcuts
```
General Navigation:
• Increase Indent (in IDEs): Cmd + ]
• Decrease Indent (in IDEs): Cmd + [
• Move cursor one word forward: Option + Right Arrow
• Move cursor one word backward: Option + Left Arrow
• Find file path: Cmd + Shift + G (in Finder)
```

### Mission Control (for trackpad-free navigation)
```
• Mission Control: Ctrl + Up
• Show Notification Center: Ctrl + Left
• Application Windows: Cmd + Down
• Show Desktop: Ctrl + Right
• Move left a space: Cmd + Left
• Move right a space: Cmd + Right
```

### Launchpad
```
• Toggle Dock hiding: Option + Cmd + D
• Show Launchpad: Ctrl + Down
```

### Spotlight (recommended: disable both for custom alternatives)
- Uncheck both Spotlight shortcuts to use alternatives like Alfred

### Application-Specific Shortcuts
Configure shortcuts for specific applications:

**Global Shortcuts:**
```
• Open Location: Ctrl + L
• New Window: Cmd + Shift + N
• Tile Window to Left: Ctrl + `
• Print: Ctrl + Cmd + P
• Open File: Shift + Cmd + O
• Minimize: Ctrl + Cmd + Option + M
```

**Alacritty (Terminal):**
```
• Hide Alacritty: Shift + Cmd + Alt + H
```

**Safari:**
```
• Toggle Favorites Bar: Ctrl + F
```

**Chrome:**
```
• Toggle Bookmarks Bar: Ctrl + F
• Reopen Closed Tab: Cmd + Ctrl + Z
```

## Safari Configuration

### Privacy and Tabs
1. Go to `Safari > Preferences`
2. **Privacy tab:**
   - Uncheck website tracking (to enable necessary cookies)
3. **Tabs:**
   - Set to "Compact" view

### Extensions
- Install "PocketTube: YouTube Subscription Manager" from App Store

## Built-in Apps Optimization

### Notes App
1. Open Notes app
2. Go to `Notes > Settings`
3. Adjust font size for better readability

### Reminders App
- Configure for task management and productivity

### Weather Widget
- Set temperature to Celsius
- Add multiple regions as needed

## Third-Party Enhancements

### Alfred (Spotlight Replacement)
Download and install [Alfred](https://www.alfredapp.com) for enhanced productivity and search capabilities.



