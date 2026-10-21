@echo off
chcp 65001 >nul
REM Rode dentro da pasta do site: copia as imagens para assets\img
mkdir assets\img\clients 2>nul
copy "c:\Users\08389\Downloads\ChatGPT Image 30 de set. de 2026, 20_04_09.png" "assets\img\hero.png"
copy "c:\Users\08389\Downloads\ChatGPT Image 30 de set. de 2026, 20_20_41.png" "assets\img\why-us.png"
copy "c:\Users\08389\Downloads\ChatGPT Image 30 de set. de 2026, 20_29_12.png" "assets\img\step-1.png"
copy "c:\Users\08389\Downloads\ChatGPT Image 30 de set. de 2026, 20_30_06.png" "assets\img\step-2.png"
copy "c:\Users\08389\Downloads\ChatGPT Image 30 de set. de 2026, 20_31_28.png" "assets\img\step-3.png"
copy "c:\Users\08389\Downloads\ChatGPT Image 30 de set. de 2026, 19_25_29.png" "assets\img\cta-bg.png"
copy "c:\Users\08389\Downloads\ChatGPT Image 30 de set. de 2026, 20_43_07.png" "assets\img\subscribe.png"
copy "c:\Users\08389\Giro Livre\1°.png" "assets\img\post-1.png"
copy "c:\Users\08389\Pictures\Screenshots\Captura de tela 2026-10-06 195312.png" "assets\img\post-2.png"
copy "c:\Users\08389\Giro Livre\3º.png" "assets\img\post-3.png"
copy "c:\Users\08389\Giro Livre\Dacredi.png" "assets\img\clients\dacredi.png"
copy "c:\Users\08389\Giro Livre\titan academia.jpg" "assets\img\clients\titan-academia.jpg"
copy "c:\Users\08389\Giro Livre\onew.png" "assets\img\clients\onew.png"
copy "c:\Users\08389\Giro Livre\sacolão.jpg" "assets\img\clients\sacolao.jpg"
copy "c:\Users\08389\Giro Livre\tenda gringo.jpg" "assets\img\clients\tenda-gringo.jpg"
copy "c:\Users\08389\Giro Livre\vts sports rs.jpg" "assets\img\clients\vts-sports-rs.jpg"
copy "c:\Users\08389\Giro Livre\R2FT.png" "assets\img\clients\r2ft.png"
copy "c:\Users\08389\Giro Livre\lagoa jardim.jpg" "assets\img\clients\lagoa-jardim.jpg"
copy "c:\Users\08389\Giro Livre\alemoa.jpg" "assets\img\clients\alemoa.jpg"
copy "c:\Users\08389\Giro Livre\agostini.jpg" "assets\img\clients\agostini.jpg"
copy "c:\Users\08389\Giro Livre\comércio campestre clube.jpg" "assets\img\clients\comercio-campestre-clube.jpg"
copy "c:\Users\08389\Giro Livre\lincoln terapeuta.jpg" "assets\img\clients\lincoln-terapeuta.jpg"
copy "c:\Users\08389\Giro Livre\maqsinos.png" "assets\img\clients\maqsinos.png"
copy "c:\Users\08389\Giro Livre\master grife.jpg" "assets\img\clients\master-grife.jpg"
copy "c:\Users\08389\Giro Livre\gjb ferreira.jpg" "assets\img\clients\gjb-ferreira.jpg"
copy "c:\Users\08389\Giro Livre\TrackON.jpg" "assets\img\clients\trackon.jpg"
REM Favicon quadrado (png + ico) na raiz do site
powershell -NoProfile -ExecutionPolicy Bypass -File gerar-favicon.ps1
pause
