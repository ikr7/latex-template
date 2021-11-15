# Template Project for Writing Essays/Papers with LaTeX


## available commands

### build PDF

```
$ make main.pdf
```

### watch file changes and complile automatically

```console
$ make watch
```

### delete all artifacts

```console
$ make clean
```

## running LaTeX with Docker

to use Docker to run LaTeX, run a command abobe followed by `docker-compose run --rm texlive` like this:

```console
$ docker-compose run --rm texlive make main.pdf
```

if you want to install an additional package, run `tlmgr` when building the image.

```dockerfile
# install additional packages:
RUN \
    tlmgr update --self && \
    tlmgr install algorithms
```

## adding figures

use following directory structure:

```
src/figures/
└── YOUR_FIG_NAME
    ├── fig.tex
    ├── additional_file_for_the_fugure.pdf
    └── additional_files_can_be_any_name.png
```

Keep the .tex file named `fig.tex`. Otherwise the dependency breaks.

## screenshot of compiled PDF

![compiled PDF](https://i.imgur.com/v6Lcy50.png)