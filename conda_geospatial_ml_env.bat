REM A windows batch file to install a conda environment 
REM for geospatial analysis, data visualization and machine learning.
REM (c) 2022 by Johannes Uhl, University of Colorado Boulder, USA.
REM do manually: get binaries of GDAL, Pyproj, Fiona, Shapely and Geopandas 
REM from https://www.lfd.uci.edu/~gohlke/pythonlibs/
REM and copy into folder WHEELDIR , adjust filenames below.
REM run it in cmd like this: "cmd /k conda_geospatial_ml_env.bat" to prevent closing on error.
REM on error, comment out successful code, or remove the entire environment like this: conda env remove -n ENV_NAME
set WHEELDIR=C:\Users\Johannes\Downloads\wheels
set ENVNAME=py38
conda create -n %ENVNAME% python=3.8
activate %ENVNAME%
conda install -c anaconda spyder
pip install %WHEELDIR%\GDAL-3.4.2-cp38-cp38-win_amd64.whl
pip install %WHEELDIR%\pyproj-3.3.0-cp38-cp38-win_amd64.whl
pip install %WHEELDIR%\Fiona-1.8.21-cp38-cp38-win_amd64.whl
pip install %WHEELDIR%\Shapely-1.8.1.post1-cp38-cp38-win_amd64.whl
pip install %WHEELDIR%\geopandas-0.10.2-py2.py3-none-any.whl
conda install -c conda-forge mapclassify --yes
conda install -c conda-forge rsgislib --yes
conda install -c conda-forge scikit-learn --yes
conda install -c conda-forge tslearn --yes
conda install -c conda-forge matplotlib --yes
conda install -c conda-forge seaborn --yes
conda install -c conda-forge ete3 --yes
conda install -c conda-forge imbalanced-learn --yes
conda install -c anaconda boto3 --yes
conda install -c conda-forge geocoder --yes
conda install -c conda-forge keras --yes
conda install -c conda-forge opencv --yes
conda install -c bokeh bokeh --yes
conda install -c conda-forge plotly --yes
conda install -c plotly plotly-orca --yes
conda install -c conda-forge mpld3 --yes
conda install -c conda-forge statsmodels --yes
conda install -c conda-forge networkx --yes
conda install -c conda-forge psycopg2 --yes
conda install -c conda-forge shap --yes
conda install -c anaconda pysal
conda install pygeos
pip install scikit-image
pip install newick
pip install node
pip install scikit-bio
pip install scikit-posthocs
pip install scikit-gstat
pip install dbfread
pip install xarray
pip install ptitprince
pip install fuzzywuzzy
pip install python-Levenshtein
pip install arcgis
pause



