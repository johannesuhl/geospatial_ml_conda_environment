# Set up a clean conda environment for geospatial analysis, machine learning, and data visualization
A windows batch file to automatically set up a clean conda environment, including some of the geospatial and machine learning python packages that I use for my work.
Note that the installation of PySAL seems to interfer with the environment variable PROJ_LIB set by the GDAL installation.
To avoid errors when importing GDAL, please add the following to the beginning of your scripts that use GDAL, fiona, geopandas etc.

 ```
import os
os.environ['PROJ_LIB'] = r'C:\Python27_64_conda\envs\py38\Library\share\proj'
os.environ['GDAL_DATA'] = r'C:\Python27_64_conda\envs\py38\Library\share'
 ```
