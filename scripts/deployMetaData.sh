clear
sfdx force:source:convert -d metadata --packagename="TeamViewer for Salesforce"

sfdx force:mdapi:deploy -u sfdxteamviewer_PCK -w 1 -d metadata

sfdx force:org:open -u sfdxteamviewer_PCK 

echo "Packaging Org is ready"