# Python Science

Docker image for scientific Python.

This image is based on [vaiski/miniconda](https://github.com/vaiski/dockerfiles/tree/master/miniconda).


## Basic Usage

Navigate to the working directory and start the container with the following
command:

```sh
docker run --rm -p 8888:8888 -v $(pwd):/home/scientist/workspace vaiski/python-science
```

Open [http://localhost:8888/](http://localhost:8888/) in your favourite browser
and you should be good to go.

## Changelog

### 0.2.0

* Added [Keras](https://keras.io/), [Altair](https://altair-viz.github.io/),
  [h5py](http://www.h5py.org/), and [hdf5](https://github.com/conda-forge/hdf5-feedstock)
