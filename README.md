## Purpose

Quickly Create Folder Structure for your Flask App

This folder structure is for Large Applications similar to how it's shown ['here'](http://flask.pocoo.org/docs/0.12/patterns/packages/ "Flask LArge Applications") 

### How To

Just Run the shell script at the root of your project before creating any files. It requires an app name.

```
./make_flask_structure.sh <APP_NAME>
```

##### Note:

It uses the python version on your path to create a virtual enviroment with the name __venv__

##### Structure

<APP_NAME>
- <APP_NAME>
    - static
        - css
        - files
        - img 
        - js
    - templates
        - errors
        - extras
        - _base.html
        - index.html
    - views
        - \__init__.py
    - \__init__.py
    - config.py
    - models.py
- test
- venv
- .gitignore
- bitbucket-pipelines.yml
- create_db.py
- Procfile (for Heroku)
- README.MD
- run.py
- runtime.txt