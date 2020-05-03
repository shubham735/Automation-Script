function pdfTransfer {
    if(!(Test-Path 'pdf Folder')){
        new-item 'pdf Folder' -itemtype directory
    }
    Get-ChildItem -Path ".\*.pdf" -Recurse | Move-Item -Destination '.\pdf Folder'    
}

function zipTransfer {
    if(!(Test-Path 'zip Folder')){
        new-item 'zip Folder' -itemtype directory
    }
    Get-ChildItem -Path ".\*.zip" -Recurse | Move-Item -Destination '.\zip Folder'    
    Get-ChildItem -Path ".\*.rar" -Recurse | Move-Item -Destination '.\zip Folder'
}

function audioTransfer {
    if(!(Test-Path 'music Folder')){
        new-item 'music Folder' -itemtype directory
    }
    Get-ChildItem -Path ".\*.mp3" -Recurse | Move-Item -Destination '.\music Folder'    
    Get-ChildItem -Path ".\*.wav" -Recurse | Move-Item -Destination '.\music Folder'
}

function videoTransfer {
    if(!(Test-Path 'video Folder')){
        new-item 'video Folder' -itemtype directory
    }
    Get-ChildItem -Path ".\*.mp4" -Recurse | Move-Item -Destination '.\video Folder'    
    Get-ChildItem -Path ".\*.mkv" -Recurse | Move-Item -Destination '.\video Folder'  
    Get-ChildItem -Path ".\*.flv" -Recurse | Move-Item -Destination '.\video Folder'
}

function imageTransfer {
    if(!(Test-Path 'image Folder')){
        new-item 'image Folder' -itemtype directory
    }
    Get-ChildItem -Path ".\*.jpg" -Recurse | Move-Item -Destination '.\image Folder'    
    Get-ChildItem -Path ".\*.jpeg" -Recurse | Move-Item -Destination '.\image Folder'
    Get-ChildItem -Path ".\*.png" -Recurse | Move-Item -Destination '.\image Folder'
}

function exeTransfer {
    if(!(Test-Path 'exe Folder')){
        new-item 'exe Folder' -itemtype directory
    }
    Get-ChildItem -Path ".\*.exe" -Recurse | Move-Item -Destination '.\exe Folder' 
}

function officeTransfer {
    if(!(Test-Path 'ms-office file Folder')){
        new-item 'ms-office file Folder' -itemtype directory
    }
    Get-ChildItem -Path ".\*.docx" -Recurse | Move-Item -Destination '.\ms-office file Folder'    
    Get-ChildItem -Path ".\*.doc" -Recurse | Move-Item -Destination '.\ms-office file Folder'
    Get-ChildItem -Path ".\*.xlsx" -Recurse | Move-Item -Destination '.\ms-office file Folder'    
    Get-ChildItem -Path ".\*.xls" -Recurse | Move-Item -Destination '.\ms-office file Folder'
    Get-ChildItem -Path ".\*.pptx" -Recurse | Move-Item -Destination '.\ms-office file Folder'    
    Get-ChildItem -Path ".\*.ppt" -Recurse | Move-Item -Destination '.\ms-office file Folder'
}

pdfTransfer
zipTransfer
audioTransfer
videoTransfer
imageTransfer
exeTransfer
officeTransfer
