HOWTO Upgrade a PC or NPC from an old template to a newer template

Install jsonpatch: `pip3 install jsonpatch`

Working Files:
- older.json = Old Character File
- newer.json = Newer Template File
- output.json = New Character File
- temp.json = Temporary Working File

# json query by node 0..n
jq '.properties[0]' newer.json > temp.json
jq '.properties[n]' newer.json > temp.json
jq '.appearance' older.json
jq '.private' newer.json
false
jq '.type' newer.json
"tableplop-character-v2"

# json query by node name/value
jq '.properties[] | select(.name=="dexterity")' older.json >> temp.json



old instructions:


This is a mess, I don't know how to properly do this, so just consider this whole thing a hack

1. Export the character in TablePlop to JSON
2. Make a working copy: `# cp CharacterName.json old.json`
3. Edit the working copy: `# nano -w old.json`
4. Delete everything before and after the brackets [] 
`- { 
  "properties":`
  and 
  `, "appearance": "https://...png", "pravate": false, "type": "tableplop-character-v2" }`
5. Run the json2csv.jq script: `jq -r -L. 'include "json2csv"; json2csv' old.json > old.csv`
6. Open old.csv with LibreOffice, save as old.ods (ODF Spreadsheet)
7. Paste in Upgrade.bas into a LibreOffice macro
8. Run the macro
9. Import the character JSON in TablePlop to a new character
10. Test before deleting the old character!

Good Luck!
