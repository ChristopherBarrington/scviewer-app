# scviewer

A lightweight single cell visualisation tool


# Running scviewer

Clone this repository and edit the `config.yaml` (but don't rename it!). Ensure that the `h5` files are accessible, for example in a `data` subdirectory. Optionally, make the app directory accessible on a shiny server and visit in a web browser. It's a `shiny` app after all.

The app can be launched on a Shiny server via a web browser or from R(Studio) using `shiny::runApp()` form the root directory of the cloned repository.

The [scviewer package](https://github.com/ChristopherBarrington/scviewer) can be installed as a 'proper' package into a library. Alternatively, the package can be loaded into the session using `devtools::load_all` and the `scviewer` submodule.

```bash
git clone git@github.com:ChristopherBarrington/scviewer-app.git sc_project

# if scviewer package is not installed, the submodule can be used:
cd sc_project/
git submodule init
git submodule update
```


# Create an `h5` file

`scviewer` expects all datasets to be saved into a properly-formatted `h5` file. This can be created using the [scviewer package](https://github.com/ChristopherBarrington/scviewer).


# Configuration file

The `yaml` configuration file contains parameters for the session. The `datasets` section of the configuration file is used to populate the dataset selection drop down. It is a two-level list: the first level denotes groups within the drop down (eg. species) and the second denotes datasets (eg. samples). Each dataset must contain a `file` key which is the path to a properly-formatted `h5` file.

The top-level `initial_feature` key can be used to define an initial feature that is displayed for all datasets in the instance. This can be overridden by specifying the `initial_feature` at any level of the configuration.

Ignore the `tracker` for now.
