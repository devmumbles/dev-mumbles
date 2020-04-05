# Dev Mumbles [![Build Status](https://travis-ci.com/devmumbles/dev-mumbles.svg?branch=master)](https://travis-ci.com/devmumbles/dev-mumbles) [![codecov](https://codecov.io/gh/heitorsilva/dev-mumbles/branch/master/graph/badge.svg)](https://codecov.io/gh/heitorsilva/dev-mumbles) [![codebeat badge](https://codebeat.co/badges/96238a9f-64c3-4f65-8a33-f3106eb733f2)](https://codebeat.co/projects/github-com-devmumbles-dev-mumbles-master)

https://mumbles.dev

## Contributing

To contribute, first you need to fork this repo and then clone your fork to your local machine. If you are a developer with experience contributing to Swift+Kitura, you can skip this introduction.

### 1. Forking the repository to your GitHub account

Using GitHub platform, look for the "Fork" icon. When you click on it, the `dev-mumbles` repository will be forked in your account.

### 2. Cloning the repository to your local machine

The next steps require you to have [Git](https://git-scm.com/) installed on your local machine, and SSH keys configured.

To install the GitHub client, visit [https://desktop.github.com](https://desktop.github.com) amd download the compatible version with your operating system.

The configuration of your SSH keys to execute the GIT commands via terminal can be made following the guide in [https://help.github.com/articles/reviewing-your-ssh-keys/](https://help.github.com/articles/reviewing-your-ssh-keys/).

With the setup of your choice, the next step is to clone the forked repository in your local machine.

#### Through GitHub for Desktop

Add New Repository->Clone repository.

#### Through terminal

```bash
git clone git@github.com:[YOUR USER]/dev-mumbles.git # via SSH
git clone https://github.com/[YOUR USER]/dev-mumbles.git # via HTTPS
```

This will create a folder in your local machine containing the project files.

Done! From now on, it's time to familiarize with the project and initialize it!

### 3. Installing Docker

[Docker](https://www.docker.com/) is a containering software. Imagine having another operating system, perfectly configured for our project. Well, Docker allows this in a simple and cheap way compared to old VMs.

Installing Docker is simple and requires only a registration on their website [https://www.docker.com/get-started](https://www.docker.com/get-started).

After Docker is installed, create a network for the project with `docker network create -d bridge mumbles_net`, then use your terminal to navigate to the root folder of the project, and then execute: `make run` or `docker run -it --rm -v $(pwd):/mumbles:delegated -w /mumbles -p 8080:8080 dev-mumbles`.

If everything goes well, after a couple of minutes you will have a development environment `up and running`. To verify, access [http://127.0.0.1:8080](http://127.0.0.1:8080) on your favorite browser.

You can also configure your `/etc/hosts` file to point `mumbles.localhost` and `mumbles.db` to `127.0.0.1`, this way, you can access the project via `http://mumbles.localhost:8080` and the database via `mumbles.db:5984`.

### 4. Delivering your contribution

When your code is ready, open a Pull Request from your forked repository to our master branch.

Remember to follow these rules:

* Include tests
* At least 80% of code coverage
* Commits in english
* The commit message will start with a verb
* The commit has to be detailed

```bash
# To write your commit message,
# think of the sentence "This commit will..." or "This commit..."
git commit -am 'Change the website title' # this commit will ...
git commit -am 'Changes the website title' # this commit ...

# The details of the commit can be done like this:
git commit -am 'Change the website title

The title had a typo.

Before it was Dev Mambles, and now is
Dev Mumbles'
```

## Styleguide

To contribute, we ask that you follow our [Styleguide](./STYLEGUIDE.md).

## License

Dev Mumbles is licensed under [GPL-3.0](./LICENSE).
