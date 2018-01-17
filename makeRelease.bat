@echo off
echo Please input release version:
set /P version=
echo Start to Copy the Example......
copy "Example\example.tex" "Release\Example\"
copy "Example\example.pdf" "Release\Example\"
copy "Example\Bibs\*.bib" "Release\Example\Bibs\"
copy "Example\Figures\*" "Release\Example\Figures\"
copy "Example\HustGraduPaper.cls" "Release\Example\"
copy "Example\gbt7714-2005.bst" "Release\Example\"
copy "Example\gbt7714-2015.bst" "Release\Example\"
copy "Example\HUSTBlack.eps" "Release\Example\"
copy "Example\HUSTGreen.eps" "Release\Example\"
echo Example Copied! 
echo.
echo Start to Copy the Template......
copy "Example\HustGraduPaper.cls" "Release\Template\"
copy "Example\gbt7714-2005.bst" "Release\Template\"
copy "Example\gbt7714-2015.bst" "Release\Template\"
copy "Example\HUSTBlack.eps" "Release\Template\"
copy "Example\HUSTGreen.eps" "Release\Template\"
echo Template Copied!
echo.
echo Start to Copy the Instruction......
copy "Instruction\HGP.pdf" "Release\使用说明.pdf"
echo Instruction Copied
echo.
echo Compressing......
powershell.exe -nologo -noprofile -command "& { Add-Type -A 'System.IO.Compression.FileSystem'; [IO.Compression.ZipFile]::CreateFromDirectory('Release', 'Version\HustGraduPaper.%version%.zip'); }"

echo ALL DONE!