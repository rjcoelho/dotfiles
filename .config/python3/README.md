# [python/pip](https://pip.pypa.io/en/stable/quickstart/)

On OSX install python2 and python3 using brew but don't override OSX's python. See [Homebrew and python](https://docs.brew.sh/Homebrew-and-Python.html).

On OSX use `python3 -m pip`, on non-OSX use `pip`.

Install python (on OSX):
```
#export PATH="/usr/local/opt/python@3/bin:$PATH" # if you dont see python3/pip3
#export PATH="/usr/local/opt/python@3/libexec/bin:$PATH" # default to python3
brew install python@3
```

Install python packages using pip
```
python3 -m pip install -r ~/.config/python3/requirements.txt
```

Generate/Update packages using pip
```
python3 -m pip freeze --q >! ~/.config/python3/requirements.txt
```

When updating python, pip/setuptools may beed to be updated
```
python3 -m pip install --upgrade pip setuptools wheel
```

Uninstall all pip packages
```
python3 -m pip freeze | xargs python3 -m pip uninstall -y
```

Upgrade all pip packages
```
python3 -m pip freeze -qq | cut -d '=' -f1 | python3 -m pip install --upgrade -r /dev/stdin
```
