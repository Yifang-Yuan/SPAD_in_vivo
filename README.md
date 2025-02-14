# SPAD_in_vivo
Apply SPAD sensor and photometry system to imaging GEVI in vivo.

Details of the SPAD camera we're using can be found here:
https://ieeexplore.ieee.org/document/7247713

Publication of using the SPAD camera to image Genetically Encoded Voltage Indicater (GEVI) in acute mouse brain slices:

https://doi.org/10.1002/advs.202203018

## PCB_design_files
This is the PCB design files of the SPCimager, these files will support PCB printing and assembling for a new PCB board.

To build the SPC imager, a Opal Kelly XEM6310 FPGA board and a SPAD sensor chip will be plugged on this PCB.

Opal Kelly XEM6310 is at the end of life, so you cannot buy this board, but XEM7310 would also be compatible. We're also developing new PCB for more functions.

https://docs.opalkelly.com/xem6310/

Before running the software, you may need to download and install the FrontPanel USB driver, it’s also in the GitHub folder.

https://pins.opalkelly.com/downloads

## SPAD_microscope_Adapter_3Dmodel
This is the 3D model for cover that is compatible with a c-mount adaptor, so that the board could be mounted on a microscope. the ".stl" can be directly used for 3D printing.

## SPCIMAGER_AA_USB3
-This is the original software to run a MATLAB based GUI to control the Opal Kelly FPGA for SPAD imaging and saving data. Please find the "SPCIMAGER_AA_USB3_UserGuide.md" document in this folder for details.

https://github.com/MattNolanLab/SPAD_in_vivo/blob/main/SPCIMAGER_AA_USB3_UserGuide.md

-Running "SPCIMAGER_AA_USB3/GUI/DigitalDemo_fast.m" will start the GUI, which will provide a live mode imaging and cab save the imaging data as a .bin file.

-I already added a few lines to save a .csv format timestamp (Yifang).

-"fixed_aggtwo_mask.m" is the code to analyse the .bin file. The first part of the codes can output an aggregated image of the recorded file, it also support background removal if you record a background. The second part of the codes can calculate total photon counts within the ROI (by changing the parameter of "xxrang" and "yyrange") for each frame and concatinate over time to generate the trace values. ----These analysis functions are also supported by python in the "SPAD_python" folder.

## SPAD_ex_vivo_analysis
Analysis codes for our ex vivo imaging data of Voltron with SPAD.

Full details can be found in our publication: https://doi.org/10.1002/advs.202203018

Full data and code share: https://datashare.ed.ac.uk/handle/10283/4486

## SPAD_simulation 
A simple jupyter notebook to simulate the sensor for fiber photometry with different sets of LED stimulations. 

Using this file, the sensor's response can be simulated and shot noise limitation can be observed. 

## SPAD_Python
Python files to implement Python-based GUI. 

Sensor is now working on Python side. In order to test the sensor:

-Open the file locations in the terminal. 

-Run test_sensor.py 

-You should see the data from the sensor on the console. 

It is also possible to record sensor data for interested amount of time. To do so, 

-Open the files location on terminal. 

-Run the record_sensor.py file (terminal code: Python3 record_sensor.py)

-The console will then ask user input for recording time. Simply enter the time in terms of bitplanes and go. 

-You should see the fiber photometry recording plot on the working directory. 


More user friendly design is coming! 

**GUI feature is added. In order to work with GUI, simply open all the files and call the launch_GUI() functions from the terminal. 
