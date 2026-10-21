# Gera favicon.png (256x256, quadrado) e favicon.ico na pasta atual.
# Uso: rode copiar-imagens.bat (ele chama este arquivo) ou:
#   powershell -ExecutionPolicy Bypass -File gerar-favicon.ps1 -Source "C:\caminho\logo.png"
param([string]$Source = "$env:USERPROFILE\Downloads\ChatGPT Image 30 de set. de 2026, 20_04_09.png")

Add-Type -AssemblyName System.Drawing
$size = 256
$img = [System.Drawing.Image]::FromFile($Source)
$bmp = New-Object System.Drawing.Bitmap $size, $size
$g = [System.Drawing.Graphics]::FromImage($bmp)
$g.Clear([System.Drawing.Color]::Transparent)
$g.InterpolationMode = 'HighQualityBicubic'
$g.SmoothingMode = 'HighQuality'
$g.PixelOffsetMode = 'HighQuality'
$scale = [Math]::Min($size / $img.Width, $size / $img.Height)
$w = [int]($img.Width * $scale)
$h = [int]($img.Height * $scale)
$g.DrawImage($img, [int](($size - $w) / 2), [int](($size - $h) / 2), $w, $h)
$g.Dispose(); $img.Dispose()

$png = Join-Path (Get-Location) 'favicon.png'
$bmp.Save($png, [System.Drawing.Imaging.ImageFormat]::Png)
$bmp.Dispose()

# favicon.ico (formato ICO com PNG embutido)
$bytes = [System.IO.File]::ReadAllBytes($png)
$ms = New-Object System.IO.MemoryStream
$bw = New-Object System.IO.BinaryWriter $ms
$bw.Write([UInt16]0); $bw.Write([UInt16]1); $bw.Write([UInt16]1)
$bw.Write([byte]0); $bw.Write([byte]0); $bw.Write([byte]0); $bw.Write([byte]0)
$bw.Write([UInt16]1); $bw.Write([UInt16]32)
$bw.Write([UInt32]$bytes.Length); $bw.Write([UInt32]22)
$bw.Write($bytes); $bw.Flush()
[System.IO.File]::WriteAllBytes((Join-Path (Get-Location) 'favicon.ico'), $ms.ToArray())

Write-Host "Pronto: favicon.png e favicon.ico criados em $(Get-Location)"
