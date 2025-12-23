Add-Type -AssemblyName Microsoft.VisualBasic
$message = [Microsoft.VisualBasic.Interaction]::InputBox('Entrez le message du commit', 'Git Commit', 'auto')

if ($message) {
    git add .
    git commit -m $message
    git pull
    git push origin main
    
    [System.Windows.Forms.MessageBox]::Show("Commit effectué avec succès!", "Git")
} else {
    [System.Windows.Forms.MessageBox]::Show("Commit annulé", "Git")
}