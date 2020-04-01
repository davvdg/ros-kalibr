# Docker ROS Kalibr

Docker image to run Kalibr.

Built versions available on Docker Hub https://hub.docker.com/repository/docker/adujardin/ros-kalibr

## Usage

```
docker run -v ~/foo:/foo -it adujardin/ros-kalibr:kinetic
```

With display support

```
sudo xhost +si:localuser:root
sudo docker run -v ~/foo:/foo -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -it adujardin/ros-kalibr:kinetic
```

Example of calibration command :

```
kalibr_calibrate_cameras --bag /foo/sequence.bag --target /foo/april_6x6_80x80cm.yaml --models 'pinhole-radtan' 'pinhole-radtan' --topics /cam0/image_raw /cam1/image_raw --dont-show-report
```
