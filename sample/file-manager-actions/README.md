

## Link 

* PCManFM / [Adding custom items to the context menu](https://wiki.archlinux.org/title/PCManFM#Adding_custom_items_to_the_context_menu)


## Dir Path

| Dir Path |
| -------- |
| [~/.local/share/file-manager/actions/](./overlay/etc/skel/.local/share/file-manager/actions/) |


## Sample

```
[Desktop Entry]
Type=Action
Profiles=profile_id
Name=Action name in English
Name[cc]=Action name in Language
Icon=Icon name
# Example: Icon=text-editor
 
[X-Action-Profile profile_id]
MimeTypes=MIME-types (semicolon separated)
Exec=command and arguments
# Example: Exec=gedit %f
```


## MimeTypes

| MimeTypes          | Note                       |
| ------------------ | -------------------------- |
| `all/allfiles`     | any files                  | 
| `inode/directory`  | any directories            | 
| `all/all`          | any files and directories  |

> Ex:

| MimeTypes          | Note                       |
| ------------------ | -------------------------- |
| `MimeTypes=inode/directory;` | any directories            | 
| `MimeTypes=all/allfiles;`    | any files                  | 
| `MimeTypes=inode/directory;all/allfiles;` | any files and directories  |
| `MimeTypes=all/all;` | any files and directories  |
| `MimeTypes=text/plain;` | text files  |


## Action

| Action |
| ------ |
| [~/.local/share/file-manager/actions/sublime-text.desktop](./overlay/etc/skel/.local/share/file-manager/actions/sublime-text.desktop)  |

