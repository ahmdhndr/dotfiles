# ⚡ Neovim Configuration (LazyVim Based)

A professional Neovim setup built on **LazyVim**, optimized for **TypeScript, PHP, and TailwindCSS** development. This configuration focuses on "Register Hygiene"—ensuring your clipboard isn't ruined by routine deletions.

## 🛠 Features & Plugins

- **Framework**: [LazyVim](https://lazyvim.org)
- **UI Enhancements**:
  - `Noice.nvim`: Clean command-line and notification UI.
  - `Incline.nvim`: Floating status information in the top-right of windows.
  - `Bufferline`: Tab-style buffer management.
  - `Render-Markdown`: Beautifully rendered documentation.
- **AI Integration**: Copilot and CopilotChat for intelligent coding assistance.
- **Languages**: Specialized support for TypeScript (ESLint/Prettier), PHP, JSON, and TailwindCSS.

---

## ⌨️ Custom Keymaps

### 📋 Register Management (The "Black Hole" Strategy)

Standard operations (`d`, `c`, `x`) are mapped to the "Black Hole" register (`"_`) to prevent overwriting your last yank.

| Shortcut        | Mode | Description                                |
| :-------------- | :--- | :----------------------------------------- |
| `x`             | N    | Delete char (No yank)                      |
| `<leader>d / D` | N/V  | Delete text (No yank)                      |
| `<leader>c / C` | N/V  | Change text (No yank)                      |
| `<leader>p / P` | N/V  | Paste from "0 (The actual last yank)       |
| `p`             | V    | Paste over selection (Keeps original yank) |
| `<leader>y / Y` | N/V  | **Explicit Yank** to system clipboard      |

### 🔍 Enhanced Search & Navigation

| Shortcut    | Mode | Description                                                                         |
| :---------- | :--- | :---------------------------------------------------------------------------------- |
| `/se`       | N    | **Search Exact**: Uses `\V` for literal searching.                                  |
| `/sr`       | N    | **Find & Replace**: Search & replace with highlight preview and `y/n` confirmation. |
| `<leader>j` | N    | Replace word under cursor globally in file.                                         |
| `jk / kj`   | I    | Quick escape to Normal mode.                                                        |
| `+ / -`     | N    | Increment/Decrement numbers.                                                        |

### 🪟 Window & Tab Management

| Shortcut            | Mode | Description                          |
| :------------------ | :--- | :----------------------------------- |
| `ss / sv`           | N    | Split Horizontal / Vertical.         |
| `sh / sj / sk / sl` | N    | Move focus Left / Down / Up / Right. |
| `te`                | N    | Open new tab.                        |
| `<Tab> / <S-Tab>`   | N    | Next / Previous tab.                 |
| `<C-w> + Arrows`    | N    | Resize windows.                      |

---

## 🚀 Productivity Tips for this Config

1. **Keep the Clipboard Clean**: Stop using `d` for deleting. Get used to `<leader>d`. This way, when you yank a line and want to delete the destination line before pasting, your yanked content is still there.
2. **Interactive Replace**: When using `/sr`, Neovim will highlight all matches. As it prompts you, press `y` to replace, `n` to skip, or `a` to replace all remaining.
3. **Visual Indenting**: In Visual mode, use `<` or `>` to indent. The selection stays active (`gv`), allowing you to hit it multiple times.
4. **Session Management**:
   - `<leader>ss` to save your current window layout and open files to `.session.vim`.
   - `<leader>sl` to restore it later.

---

## 📂 File Structure

- `init.lua`: Main entry point.
- `lua/config/keymaps.lua`: All custom shortcuts defined above.
- `lua/config/lazy.lua`: Plugin manager setup and LazyVim imports.
- `lua/plugins/ui.lua`: Customizations for Noice, Incline, and Snacks.
