: ECHO OFF

SET /A i=0

setlocal ENABLEDELAYEDEXPANSION

cd "../TestStreams/"

FOR %%A IN (*) DO (
    for %%K IN (0 1 2) DO (
        SET file_name="../Models/OutStreams/%%A_%%K.wav"
        "../Models/ProcessWavFile/Debug/ProcessWavFile.exe" %%A !file_name! %%K
    )
)
    : SET /a i=i+1
    : SET file_name="../Models/OutStreams/out_!i!.wav"
    : echo !i!
    : echo !file_name!
    : "../Models/ProcessWavFile/Debug/ProcessWavFile.exe" %%A !file_name! 1
:)

endlocal


