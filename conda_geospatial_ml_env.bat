REM A windows batch file to install a conda environment 
REM for geospatial analysis, data visualization and machine learning.
REM (c) 2022 by Johannes Uhl, University of Colorado Boulder, USA.

REM Step 1. Download miniconda, open anaconda prompt.
REM Step 2. Run it in cmd like this: "cmd /k conda_geospatial_ml_env.bat" to prevent closing on error.
REM Step 3. On error, comment out successful code, or remove the entire environment like this: conda env remove -n ENV_NAME.

set ENVNAME=py38
conda create -n %ENVNAME% python=3.8
activate %ENVNAME%
conda install spyder gdal pysal psycopg2 geopandas rasterio --yes
pip install osmnx
conda install -c conda-forge geocoder --yes
REM conda install -c conda-forge rsgislib --yes #### will cause inconsistencies, better use in separate environment.
conda install -c conda-forge tslearn --yes 
conda install -c conda-forge seaborn --yes 
conda install -c conda-forge ete3 --yes 
conda install -c conda-forge imbalanced-learn --yes 
conda install -c conda-forge boto3 --yes 
conda install -c conda-forge opencv --yes 
conda install -c anaconda boto3 --yes
conda install -c conda-forge keras --yes 
conda install -c conda-forge plotly --yes
conda install -c plotly plotly-orca --yes
conda install -c bokeh bokeh --yes
conda install -c conda-forge mpld3 --yes 
conda install -c conda-forge statsmodels --yes 
conda install -c conda-forge shap --yes 
conda install -c conda-forge scikit-image --yes
conda install -c conda-forge scikit-posthocs --yes
conda install -c conda-forge scikit-gstat --yes
conda install -c conda-forge dbfread --yes
conda install -c conda-forge xarray --yes
conda install -c conda-forge ptitprince --yes
conda install -c conda-forge fuzzywuzzy --yes
pip install newick
pip install node
pip install scikit-bio
pause
