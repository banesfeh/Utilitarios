# --- EXECUTAR UM PROGRAMA ---
# Opção 1: Usando Start-Process
Start-Process calc.exe  

# Opção 2: Usando uma classe COM
$classe = New-Object -com WScript.Shell
$classe.Run("calc")

# --- VARIÁVEIS ---
# Declarando variáveis
[int]$M = 20  
$variavel = "PowerShell é poderoso!"

# Manipulação de Hashtable
$M = @{}  # Criar Hashtable
$M["PREÇO"] = "R$ 1,99"  # Adicionar valor
$M.Remove("PREÇO")  # Remover valor

# Entrada e saída de dados
$input = Read-Host "Digite alguma coisa"
Echo "Você digitou: $input"

# Comprimento de variável
Write-Output "Comprimento da variável: $($variavel.Length)"

# --- OPERADORES ---
if (5 -lt 10) { Write-Output "5 é menor que 10" }

# Comparação com padrões
$nome = "Felipe"
if ($nome -like "Fe*") { Write-Output "O nome começa com Fe" }

# --- ARQUIVOS ---
# Criar ou sobrescrever um arquivo
Get-Process > teste1.txt

# Atualizar um arquivo existente
Get-Process >> teste1.txt

# --- WHERE-OBJECT ---
# Exemplo 1: Filtrar serviços que estão em execução
Write-Output "Serviços em execução:"
Get-Service | Where-Object {$_.Status -eq "Running"}

# Exemplo 2: Processos com consumo de CPU maior que 100
Write-Output "Processos com CPU > 100:"
Get-Process | Where-Object {$_.CPU -gt 100}

# --- DICAS ADICIONAIS ---
# Criar, verificar e remover diretórios
New-Item -ItemType Directory -Path "C:\Exemplo"
if (Test-Path "C:\Exemplo") { Write-Output "Diretório criado com sucesso!" }
Remove-Item -Recurse -Force "C:\Exemplo"
Write-Output "Diretório removido."

# Criar e manipular arquivos
New-Item -ItemType File -Path "C:\Exemplo\arquivo.txt"
Copy-Item -Path "C:\Exemplo\arquivo.txt" -Destination "C:\Backup"
Move-Item -Path "C:\Exemplo\arquivo.txt" -Destination "C:\Exemplo\novo_nome.txt"

# --- LAÇOS DE REPETIÇÃO ---
# Laço For
for ($i = 0; $i -lt 5; $i++) {
    Write-Output "Iteração $i"
}

# Laço Foreach
$lista = 1..5
foreach ($item in $lista) {
    Write-Output "Item: $item"
}
