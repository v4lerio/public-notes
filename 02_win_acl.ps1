$path="C:\Users\XYZ\folderToScan" # starting folder

$reportpath="C:\data\ACL.csv" # path to export ACL report, folder structure must exists

# the following scans for directories only and gets acl(permissions) for all of them
# dir -Recurse $path | where { $_.psiscontainer } | % { $path1 = $_.fullname; Get-Acl $_.fullname | % { $_.access | Add-Member -MemberType NoteProperty '.' -Value $path1 -passthru }} | Export-Csv $reportpath

# the following scans for folders and files
dir -Recurse $path | % { $path1 = $_.fullname; Get-Acl $_.fullname | % { $_.access | Add-Member -MemberType NoteProperty '.' -Value $path1 -passthru }} | Export-Csv $reportpath
