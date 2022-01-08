# Give me Head(er)

`give_me_header.py` is a Python3 module that can replace or add an image in a `.docx` document header, where the header contains a table with at least one cell.

The `give_me_header.py` module can be used in another script (`import give_me_header`), or can be run as a standalone script. 

## Clone this Repository

```
git clone https://github.com/lapumb/give_me_head_er.git
```

## Install Python3

This repository is written in Python3. If you don't have Python3 installed, you can download it from [Python.org](https://www.python.org/downloads/).

To verify that Python3 is installed, run `python --version`.

## Setup the Repository

To setup the repository, source the `environment.ps1` file:

```bash
. ./environment.ps1
```

Sourcing the environment will start a virtual Python environment and download the project requirements. To deactivate the virtual environment, execute the `deactivate` command. 

## Run the Script

To see the usage of the script, execute `python give_me_header.py -h`. The following is the simplest usage of the script:

```bash
python give_me_header.py --docx my_file.docx --image my_image.png
```

## Batch Run the Script

For your convienence, I also included a powershell script to run `give_me_header.py` against an entire directory containing `.docx` files (you're welcome). The script is called `bulk_process_give_me_header.ps1` and expects the following arguments:

- Position 0: The directory containing the `.docx` files (Required)
- Position 1: The new image (Required)
- Position 3: The image width (Optional)
- Position 3: The image height (Optional)

An example usage would look like:

```bash
# Bulk process "my_directory" with the image "my_image.png" with a width of 2 (inches)
bulk_process_give_me_header.ps1 my_directory my_image.png 2
```