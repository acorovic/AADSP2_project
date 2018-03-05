: Delete log files first.
cd OutCmp
del output1_Model0_vs_Model1.txt
del whiteNoise_Model1_vs_Model2.txt
del whiteNoise_Model2_vs_Model3.txt

cd ..

: Execute Model 0, Model 1, Model 2 and Model 3
cd ProcessWavFile/Debug
"ProcessWavFile.exe" "..//..//..//TestStreams//2ch_contour_ne40_24b_48k.wav" "..//..//OutStreams//cmp_0.wav" 2
cd ../..

cd model1/Debug
"model1.exe" "..//..//..//TestStreams//2ch_contour_ne40_24b_48k.wav" "..//..//OutStreams//cmp_1.wav" 2


:: TO DO: Call model 1 executable and name output file: out_speech_1.wav
:: TO DO: Call model 2 executable and name output file: out_speech_2.wav

: cd ..

: cd multitapEcho_model3
: c:\CirrusDSP\bin\cmdline_simulator.exe -project SimulatorConfigurationTemp.sbr -max_cycles 1000000

cd ../..

: Generate new logs
"..//tools//PCMCompare.exe" OutStreams//cmp_0.wav OutStreams//cmp_1.wav 2> OutCmp//speech_Model0_vs_Model1.txt
: "..//tools//PCMCompare.exe" OutStreams//out_speech_1.wav OutStreams//out_speech_2.wav 2> OutCmp//whiteNoise_Model1_vs_Model2.txt
: "..//tools//PCMCompare.exe" OutStreams//out_speech_2.wav OutStreams//out_speech_3.wav 2> OutCmp//whiteNoise_Model2_vs_Model3.txt

:: TO DO: Compare output of model1 and model2 and store the result in OutCmp//whiteNoise_Model1_vs_Model2.txt


