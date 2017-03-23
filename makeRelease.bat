@echo off
echo Start to Copy the Example......
copy "Example\example.tex" "Release\Example\"
copy "Example\example.pdf" "Release\Example\"
copy "Example\Bibs\*.bib" "Release\Example\Bibs\"
copy "Example\Figures\*" "Release\Example\Figures\"
copy "Example\HustGraduPaper.cls" "Release\Example\"
copy "Example\gbt7714-2005.bst" "Release\Example\"
copy "Example\HUSTBlack.png" "Release\Example\"
copy "Example\HUSTGreen.png" "Release\Example\"
echo Example Copied! 

echo Start to Copy the Template......
copy "Example\HustGraduPaper.cls" "Release\Template\"
copy "Example\gbt7714-2005.bst" "Release\Template\"
copy "Example\HUSTBlack.png" "Release\Template\"
copy "Example\HUSTGreen.png" "Release\Template\"
echo Template Copied!

echo Start to Copy the Instruction......
copy "Instruction\HGP.pdf" "Release\使用说明.pdf"
echo Instruction Copied

echo ALL DONE!