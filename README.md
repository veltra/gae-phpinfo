# gae-phpinfo

## Getting Started

### Prerequisites

* [Docker installed](https://docs.docker.com/engine/installation/)
* [Google App Engine project created](https://cloud.google.com/appengine/docs/standard/php/console/)

### Installing

Clone this repository:

```sh
$ git clone git@github.com:veltra/gae-phpinfo.git
$ cd gae-phpinfo
```

Build the image:

```sh
$ docker build -t gae-phpinfo .
```

### Deployment

Run the container and enter into it:

```sh
$ docker run -it gae-phpinfo bash
```

Deploy the phpinfo app to Google App Engine:

```sh
# gcloud auth login --no-launch-browser
# gcloud app deploy --project YOUR_PROJECT_ID
# exit
```

Then access to `https://YOUR_PROJECT_ID.appspot.com/`.

### Built With

- [Google Cloud SDK Docker](https://github.com/GoogleCloudPlatform/cloud-sdk-docker)
