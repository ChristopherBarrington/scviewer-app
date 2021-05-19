# scviewer

A lightweight single cell visualisation tool



# Running scviewer

Clone this repository and edit the `config.yaml` (but don't rename it!). Ensure that the `h5` files are accessible, for example in a `data` subdirectory. Make the app directory accessible on a shiny server and visit in a web browser. It's a `shiny` app after all.

Running this way the `scviewer` package is loaded into an R session using `devtools::load_all()` in the `app.R`.

The package _could_ be installed into a standard R library and `app.R` modified to use `library(scviewer)` instead; with this option the `scviewer` subdirectory is redundant.

The app can be launched on a Shiny server via a web browser or from R using `shiny::runApp()` form the root directory of the cloned repository.





with `git clone git@github.com:ChristopherBarrington/scviewer-app.git my_project`






# Create an `h5` file

`scviewer` expects all datasets to be saved into a properly-formatted `h5` file with keys for the following:


# Configuration file

The `yaml` configuration file contains parameters for the session. The `datasets` section of the configuration file is used to populate the dataset selection dropdown. It is a two-level list: the first level denotes groups within the dropdown (eg. species) and the second denotes datasets (eg. samples). Each dataset must contain a `file` key which is the path to a properly -formatted `h5` file (as described above).

The top-level `initial_feature` key can be used to define an initial feature that is displayed for all datasets in the instance. This can be overridden by specifying the `initial_feature` at any level of the configuration.

Ignore the `tracker`.



