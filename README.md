# Set up a clean conda environment for geospatial analysis, machine learning, and data visualization
A windows batch file to automatically set up a clean conda environment, including some of the geospatial and machine learning python packages that I use for my work.
In case that the environment variable PROJ_LIB set by the GDAL installation is messed up, it may be necessary to add the following to the beginning of your scripts that use GDAL, fiona, geopandas etc.

 ```python
import os
os.environ['PROJ_LIB'] = r'C:\<CONDA_INSTALLATION_DIR>\envs\py38\Library\share\proj'
os.environ['GDAL_DATA'] = r'C:\<CONDA_INSTALLATION_DIR>\envs\py38\Library\share'
 ```
 
