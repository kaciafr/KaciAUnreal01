Add-Type -AssemblyName Microsoft.VisualBasic
Add-Type -AssemblyName System.Windows.Forms

$status = git status --porcelain

if ($status) {
    $message = [Microsoft.VisualBasic.Interaction]::InputBox('Entrez le message du commit', 'Git Commit', 'auto')
    
    if ($message) {
        git add .
        git commit -m $message
        git pull
        git push origin main
        [System.Windows.Forms.MessageBox]::Show("Commit et sync OK !`n`nMessage: $message", "Git - Succes")
    } else {
        [System.Windows.Forms.MessageBox]::Show("Commit annule", "Git")
    }
} else {
    git pull
    [System.Windows.Forms.MessageBox]::Show("Aucune modification locale`nPull effectue", "Git - Sync")
}
