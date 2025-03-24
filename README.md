# Neuromorphic-Touch-Sensing-Haptic-Display

## Description
This repository contains the source code and data for the INTHIS project.

## Features
The code is organized in the following way
- data_source: is a collection of coordinates, meshes, functions and other utilities used by the codes for both the interfaces and the analysis scripts. Should always be reachable in the paths specified at the input of each other script in the reporitory. 
- FHD: is the directory related to the experiment of the Forearm Haptic Display in stand-alone, comprehending DataAnalysis: the analysis script used for evaluating the results, which are organized in the matlab struct "Indentations.mat".
- INTHIS: is the directory related to the experiment of the full INTHIS system in telepresence setup comprehending DataAnalysis: the analysis script used for evaluating the results, which are organized in the matlab struct "S.mat".
-Figures: is a set of folders containing the code that generate the subfigures of the main and supplementary figures for all the work.

## Usage
The analysis scripts for both the experiments can be run as standalone, as well as all the Figures scripts, after adding correctly the path to data_source and their related results data.

## License
This project is licensed under the [MIT License](LICENSE).

## Contact
For any inquiries, please contact [martino.singuaroli@gmail.com; calogero.oddo@santannapisa.it](mailto:martino.singuaroli@gmail.com).

