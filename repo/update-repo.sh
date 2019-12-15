echo 'Changing working directory to the Repo directory'
cd "${BASH_SOURCE%/*}"
echo 'Creating Packages file (Assuming deb files are in ./debs)'
./dpkg-scanpackages ./debs/ /dev/null > ./Packages
echo 'bzipping and gzipping Packages file'
bzip2 -c9 ./Packages > ./Packages.bz2
gzip -c9 ./Packages > ./Packages.gz
echo 'Done. You may now upload your stuff to the internet.'

# sudo dpkg-scanpackages ./debs /dev/null > Packages
# The above command is how I have to do for scanning packages after cd'ing into the proper directory