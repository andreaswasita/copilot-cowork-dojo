# Wiki

The step-by-step user-journey guide. Start at [Home.md](./Home.md).

## Browse it locally

Open any page directly. Internal links resolve as relative paths.

## Publish it as a GitHub Wiki

GitHub Wikis live in a separate `.wiki.git` repo per project. To publish this folder to your wiki:

1. Enable the Wiki on your GitHub repo (**Settings → Features → Wikis**).
2. Visit your repo's Wiki tab once and create the initial page (any text — GitHub initializes the wiki repo on first save).
3. Clone the wiki repo:

   ```powershell
   git clone https://github.com/<owner>/<repo>.wiki.git
   ```

4. Copy this folder's contents into the wiki repo (preserving filenames):

   ```powershell
   Copy-Item -Path .\* -Destination ..\<repo>.wiki\ -Recurse -Force
   ```

5. Commit and push:

   ```powershell
   cd ..\<repo>.wiki
   git add .
   git commit -m "docs: publish step-by-step wiki"
   git push
   ```

GitHub Wiki conventions used in this folder:

- `Home.md` — the landing page.
- `_Sidebar.md` — left-hand navigation.
- `_Footer.md` — page footer.
- All other pages — top-level wiki pages, names match URLs.

## Or publish as a static site

The pages are plain Markdown — they render fine in MkDocs, Docusaurus, GitBook, Notion import, etc.
