
# LSD-SLAM: Large-Scale Direct Monocular SLAM

* **LSD-SLAM: Large-Scale Direct Monocular SLAM**, *J. Engel, T. Schöps, D. Cremers*, ECCV '14
* **Semi-Dense Visual Odometry for a Monocular Camera**, *J. Engel, J. Sturm, D. Cremers*, ICCV '13

LSD-SLAM is a novel approach to real-time monocular SLAM. It is fully direct (i.e. does not use keypoints / features) and creates large-scale, semi-dense maps in real-time on a laptop. For more information see [http://vision.in.tum.de/lsdslam](http://vision.in.tum.de/lsdslam) 

## Repository Purpose

LSD-SLAM is a great technology but it is extremely poorly maintained. You may spend a couple of days dealing with legacy dependencies which are no longer supported.

This repository is for your poor souls who wants to experiment with LSD-SLAM in a non-professional setting. This is a non-ROS version forked from [tyunist/LSD-SLAM](https://github.com/tyunist/LSD-SLAM). All dependencies are included in as part of a docker image which will just work.

I plan to provide the docker image in the future, but for now you will have to build it yourself.

## Instructions

### Clone the repository 

```
$git clone https://github.com/ppyht2/lsd-slam-containerised
$cd lsd_slam_noros
```

### Building a docker image

Run the following command in a directory where `Dockerfile` is placed.

```
$docker build -t lsdslam_noros:latest .
```

### Launch a container

This part is usually environment dependent because we need to share a window with the host.

If you are on Mac, make sure the latest [XQuartz](https://www.xquartz.org) is installed, and run `$./scripts/launch-container-mac.sh`.  
On Linux, run `$./scripts/launch-container-linux.sh`.

### Download the dataset

Download the TUM dataset sequence by running

```
$export SEQUENCE=30  # sequence number of the TUM-mono dataset 
$./scripts/download_tum_mono.sh
```

### Run LSD-SLAM

The debug window should appear by executing `$./bin/main_on_images data/sequence_$SEQUENCE`.

If segmentation fault or Gtk-WARNIG happens, executing the command above multiple times may solve it.
