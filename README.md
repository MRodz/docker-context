# ConTeXt Docker image

This Docker image runs [ConTeXt](http://wiki.contextgarden.net/Main_Page) standalone on Ubuntu 16.04 in order to guarantee a stable environment that leads to reproducible results for your ConTeXt compilation.


## Prerequisites

Install Docker according to the [Docker installation guide](https://docs.docker.com/install/).


## Installing

Make a directory for this repository and clone it:

```
mkdir {DIRNAME}
cd {DIRNAME}
git clone https://github.com/MRodz/docker-context.git
```
Then build the image (this will take some time):
```
sudo docker build -t {YOUR_TAG}
```

__Note:__ In case you have a separate UNIX group for Docker you can omit `sudo`. For more information about this, have a look at [this Docker help page](https://docs.docker.com/install/linux/linux-postinstall/).

In order for this container to run properly, make sure you have the TeX-file you want to compile in this directory.


## Usage

Start the container with

```
./contextdocker.sh
```

Then compile the file with

```
./compile.sh
```

Since the current TeX-file is fetched from your host directory every time you run `compile.sh`, you can make changes while the container is still running. Simply run `compile.sh` again to compile the changed file.

The output PDF will automatically be pushed to your host directory.


## Contributing

Feel free to submit pull requests to improve this Dockerfile.


## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details
