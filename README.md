# web_ceo — WordPress Project

A WordPress site running on XAMPP (local) at `C:\xampp\htdocs\web_ceo`.

## What's tracked in this repo

Only **custom** code is versioned. WordPress core, third-party plugins, uploads,
and secrets (`wp-config.php`, `.htaccess`) are excluded by `.gitignore`.

Currently tracked:

- `wp-content/themes/divi-child/` — custom Divi child theme

To track a new custom plugin, add it to `.gitignore` under the *Whitelist* section:

```
!/wp-content/plugins/your-plugin-folder/
```

## Local stack

- XAMPP (Apache + MySQL + PHP)
- WordPress at `http://localhost/web_ceo`
- Parent theme: **Divi**
- Child theme: **divi-child**

## Working with this repo

```bash
# pull latest changes
git pull origin main

# make changes inside the tracked folders, then:
git add .
git commit -m "describe your change"
git push origin main
```

## Setup on a new machine

1. Install XAMPP and start Apache + MySQL.
2. Clone this repo into `C:\xampp\htdocs\web_ceo`.
3. Install a fresh WordPress in the same folder (core files are NOT in the repo).
4. Install the **Divi** parent theme (purchased from elegantthemes.com).
5. Copy a working `wp-config.php` from another env (it is intentionally ignored).
6. Activate the **divi-child** theme.
