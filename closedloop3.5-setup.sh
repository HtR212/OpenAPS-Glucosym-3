#!/usr/bin/env bash

python_version=3.5
venv_name=venv

echo "Is 'venv' the folder name of the virtual environment?(Y/n)"
read answer
if [[ "${answer}" == n ]] ; then
  echo "Please enter the folder name of the virtual environment:"
  read venv_name
  while [[ ! -d "./${venv_name}" ]] ; do
    echo "Folder does exist."
    echo "Please enter the folder name of the virtual environment:"
    read venv_name 
  done
fi

pip install setuptools==44.1.1
pip install numpy==1.16.6 watchdog==0.10.7 nodeenv==1.6.0 openaps==0.1.5 openaps-contrib==0.0.15 matplotlib==2.2.5

apt-get download python-dev=2.7.12-1~16.04 python-software-properties=0.96.20.10

dpkg -x ./python-dev* ./dev
dpkg -x ./python-software-properties* ./software-properties

mv ./dev ./${venv_name}/lib/python${python_version}/site-packages
mv ./software-properties ./${venv_name}/lib/python${python_version}/site-packages 

rm ./python-dev*
rm ./python-software-properties*

nodeenv -p --node=12.22.1
npm init -g
npm install -g json@11.0.0 oref0@0.7.0

cp -f ./substitution\ files/oref0/basal-set-temp.js ./${venv_name}/lib/node_modules/oref0/lib/
cp -f ./substitution\ files/oref0/determine-basal.js ./${venv_name}/lib/node_modules/oref0/lib/determine-basal/
cp -f ./substitution\ files/oref0/oref0-determine-basal.js ./${venv_name}/lib/node_modules/oref0/bin/

# For python 3 only
cp -f ./substitution\ files/openaps ./${venv_name}/bin/
cp -f ./substitution\ files/vendors/medtronic.py ./${venv_name}/lib/python${python_version}/site-packages/openaps/vendors/
cp -f ./substitution\ files/decocare/stick.py ./${venv_name}/lib/python${python_version}/site-packages/decocare/
cp -f ./substitution\ files/decocare/session.py ./${venv_name}/lib/python${python_version}/site-packages/decocare/
cp -f ./substitution\ files/decocare/history.py ./${venv_name}/lib/python${python_version}/site-packages/decocare/
cp -f ./substitution\ files/decocare/records/times.py ./${venv_name}/lib/python${python_version}/site-packages/decocare/records/
cp -f ./substitution\ files/decocare/cgm/__init__.py ./${venv_name}/lib/python${python_version}/site-packages/decocare/cgm/
cp -f ./substitution\ files/vendors/process.py ./${venv_name}/lib/python${python_version}/site-packages/openaps/vendors/
cp -f ./substitution\ files/vendors/plugins/add.py ./${venv_name}/lib/python${python_version}/site-packages/openaps/vendors/plugins/
cp -f ./substitution\ files/cli/__init__.py ./${venv_name}/lib/python${python_version}/site-packages/openaps/cli/
cp -f ./substitution\ files/alias/add.py ./${venv_name}/lib/python${python_version}/site-packages/openaps/alias/
cp -f ./substitution\ files/alias/remove.py ./${venv_name}/lib/python${python_version}/site-packages/openaps/alias/
cp -f ./substitution\ files/alias/show.py ./${venv_name}/lib/python${python_version}/site-packages/openaps/alias/
cp -f ./substitution\ files/devices/__init__.py ./${venv_name}/lib/python${python_version}/site-packages/openaps/devices/
cp -f ./substitution\ files/devices/add.py ./${venv_name}/lib/python${python_version}/site-packages/openaps/devices/
cp -f ./substitution\ files/vendors/dexcom.py ./${venv_name}/lib/python${python_version}/site-packages/openaps/vendors/
cp -f ./substitution\ files/dexcom_reader/readdata.py ./${venv_name}/lib/python${python_version}/site-packages/dexcom_reader/
cp -f ./substitution\ files/decocare/fuser.py ./${venv_name}/lib/python${python_version}/site-packages/decocare/
cp -f ./substitution\ files/vendors/plugins/remove.py ./${venv_name}/lib/python${python_version}/site-packages/openaps/vendors/plugins/
cp -f ./substitution\ files/vendors/plugins/show.py ./${venv_name}/lib/python${python_version}/site-packages/openaps/vendors/plugins/
cp -f ./substitution\ files/devices/remove.py ./${venv_name}/lib/python${python_version}/site-packages/openaps/devices/
cp -f ./substitution\ files/devices/show.py ./${venv_name}/lib/python${python_version}/site-packages/openaps/devices/
cp -f ./substitution\ files/config.py ./${venv_name}/lib/python${python_version}/site-packages/openaps/
cp -f ./substitution\ files/builtins.py ./${venv_name}/lib/python${python_version}/site-packages/openaps/
cp -f ./substitution\ files/cli/commandmapapp.py ./${venv_name}/lib/python${python_version}/site-packages/openaps/cli/
cp -f ./substitution\ files/vendors/__init__.py ./${venv_name}/lib/python${python_version}/site-packages/openaps/vendors/
cp -f ./substitution\ files/dexcom_reader/database_records.py ./${venv_name}/lib/python${python_version}/site-packages/dexcom_reader/
cp -f ./substitution\ files/dexcom_reader/util.py ./${venv_name}/lib/python${python_version}/site-packages/dexcom_reader/
cp -f ./substitution\ files/dexcom_reader/packetwriter.py ./${venv_name}/lib/python${python_version}/site-packages/dexcom_reader/
cp -f ./substitution\ files/decocare/commands.py ./${venv_name}/lib/python${python_version}/site-packages/decocare/
cp -f ./substitution\ files/decocare/records/__init__.py ./${venv_name}/lib/python${python_version}/site-packages/decocare/records/
cp -f ./substitution\ files/decocare/records/base.py ./${venv_name}/lib/python${python_version}/site-packages/decocare/records/
cp -f ./substitution\ files/decocare/records/bolus.py ./${venv_name}/lib/python${python_version}/site-packages/decocare/records/
cp -f ./substitution\ files/decocare/link.py ./${venv_name}/lib/python${python_version}/site-packages/decocare/
cp -f ./substitution\ files/vendors/plugins/__init__.py ./${venv_name}/lib/python${python_version}/site-packages/openaps/vendors/plugins/
cp -f ./substitution\ files/uses/__init__.py ./${venv_name}/lib/python${python_version}/site-packages/openaps/uses/
cp -f ./substitution\ files/uses/registry.py ./${venv_name}/lib/python${python_version}/site-packages/openaps/uses/
cp -f ./substitution\ files/reports/__init__.py ./${venv_name}/lib/python${python_version}/site-packages/openaps/reports/
cp -f ./substitution\ files/openaps-report ./${venv_name}/bin/
# End

cd ./openaps${python_version}
git init

echo "Auto-installation finished!"








