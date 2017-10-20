if [ $# -eq 0 ]
  then
  echo "App name needed. e.g: " `basename "$0"` "<APP_NAME>"
    exit
fi

echo "Creating App Folder: " $1
mkdir $1

cd $1
version=$(python -V 2>&1 | grep -Po '(?<=Python )(.+)')
echo -en '\n'
echo "Creating Virtual Envitonment for " $version
virtualenv venv
echo "Virtual Environment is ready to use" 
echo -en '\n'

echo "Creating Common Files"
touch .gitignore
touch Procfile
touch README.md
touch bitbucket-pipelines.yml
touch run.py
touch runtime.txt
touch create_db.py

echo "Done."
echo -en '\n'

echo "Creating the APP Folder and Files"
mkdir $1
echo "Done."
echo "Creating the TEST Folder"
mkdir "test"
echo "Done."
echo -en '\n'

cd $1
echo "In "$1" folder. Creating Config.py and Models.py"
echo -en '\n'
touch __init__.py
touch config.py
touch models.py

echo "Creating Views, Static and Templates folders"
echo -en '\n'
mkdir "views"
mkdir "static"
mkdir "templates"

cd "static"
echo "Creating content for Static folder"
echo -en '\n'
mkdir "css"
mkdir "js"
mkdir "img"
mkdir "files"

cd ..

cd "views" 
echo "Created Views folder and __init__.py"
echo -en '\n'
touch __init__.py

cd ..

cd "templates"
echo "Creating contents for Templates folder"
echo -en '\n'
mkdir "errors"
mkdir "extras"
touch _base.html
touch index.html

echo "ALL DONE. READY TO USE !!"