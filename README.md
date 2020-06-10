# Context-Aware Crowd Counting

This is a fork of https://github.com/weizheliu/Context-Aware-Crowd-Counting (not using the Github fork resource due to issues with git-lfs).

## Requirements

The application runs within a docker container. Therefore, the only installed requirement is **docker**.

## Usage

This repository should contain all elements required to run the application (model, datasets), since they are stored within by means of git-lfs.

## Get the container

First, pull the container from dockerhub:

```
$ docker pull rodolfoap/pytorch:0.4.1-20200610
```

Or you can just build the container:

```
$ cd docker/
$ ./build.bash
	Sending build context to Docker daemon  7.168kB
	Step 1/3 : FROM floydhub/pytorch:1.0.0-gpu.cuda9cudnn7-py2.39
	 ---> d3b46b3ff240
	Step 2/3 : ENV DEBIAN_FRONTEND=noninteractive
	 ---> Using cache
	 ---> 6a72162433b0
	Step 3/3 : RUN apt-get -y update && apt -y install git curl unzip cmake build-essential vim python-pip unzip wget libgtk2.0-dev python-tk
	 ---> Using cache
	 ---> 03e30f54c0d8
	Successfully built 03e30f54c0d8
	Successfully tagged rodolfoap/pytorch:0.4.1-20200610
```
Second, following the instructions of the original document, run the procedure. An example is shown here.

## Preparing the dataset

* Before launching, check the memory that's assigned to the docker container in `cli.bash` and the `batch_size` variable in train.py. _YMMV_, you need to play with those variables in order to improve your performance.

```
$ cd dataset
$ tar xvfz dataset/ShanghaiTech_CrowdCountingDataset.tz

$ cd ../model
$ tar xvfz part_B_pre.pth.tz

$ cd ../docker
$ ./cli.bash

root@13d8d9df96d1:/workspace# python make_dataset.py

root@13d8d9df96d1:/workspace# python create_json.py
```

## Training

```
root@13d8d9df96d1:/workspace# python train.py train.json val.json
```

## Testing

```
root@13d8d9df96d1:/workspace# python test.py
```

## Original README

Check the [original README.md file here](README-CACC.md).
