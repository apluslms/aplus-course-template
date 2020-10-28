## A course template for A-plus learning environment

This course template contains the necessary files and configurations to start authoring a new course for the
[A+ e-learning system](https://plus.cs.aalto.fi/). This template can be freely modified and adapted to your needs.

## Requirements

This course templated has been tested in Ubuntu Linux environment. Nevertheless, this course should also work on any
Unix / Linux / Mac environment. In order to run the course locally, you should install the following software.

-   [git](https://git-scm.com/)
-   [make](https://www.gnu.org/software/make/)
-   [docker](https://docs.docker.com/engine/installation/)
-   [docker-compose](https://docs.docker.com/compose/install/) - [Recommended Installation](https://gist.github.com/jaguarfi/2e8dc73a68b6abe79989dc7fef92bf4a)

All other software runs inside [Docker](https://www.docker.com/) containers.

## Download

There are two options for downloading the course template. Either way, the result is the same. Therefore, you can decide
wich of the following two approaches to take.

### Option A: Clone the repository and all the submodules

You can download this template recursively (that means including the [A-plus-rst-tools](https://github.com/apluslms/a-plus-rst-tools)

<small>Clone the repository using an SSH key.</small>

```sh
git clone --recursive git@github.com:apluslms/aplus-course-template.git <name of your course>
```

### Option B: Clone the repository and the submodules manually

You can download the main repository and initialise the [A-plus-rst-tools](https://github.com/apluslms/a-plus-rst-tools)
submodule manually.

<small>Clone the repository using an SSH key.</small>

```sh
git clone git@github.com:apluslms/aplus-course-template.git <name of your course>
git submodule init && git submodule update
```

---

The previous snippets of code used SSH keys to download the course template. Nevertheless, you can also download the
repositories using HTTPS or use GitHub Desktop. More information about how to clone repositories can be found in the
[GitHub Documentation.](https://docs.github.com/en/free-pro-team@latest/github/creating-cloning-and-archiving-repositories/cloning-a-repository).

## Run

1. Open the terminal, go to the course directory and type the following command.

    ```sh
    ./docker-compile.sh
    ```

    This command will compile the course, and store the compiled files inside the **\_build** directory. The **\_build**
    directory will contain all the HTML and YAML files that are generated from the RST source files. The **\_build**
    directory will also include all the static files such as images, CSS, JS and downloadable files.

    **OR**

    ```sh
    ./docker-fast-compile.sh
    ```

    This script, as its name suggests, compiles the course slightly faster and also store the compiled files inside the
    **\_build** directory. However, this command does not clean the cached content. Therefore, the `./docker-fast-compile.sh`
    command should be run only when you want to make use of the cached content.

2. Open the terminal, go to the course director and type the next command.

    ```sh
    ./docker-up.sh
    ```

    If the `./docker-up.sh` command run successfully, you should be able to access your course in any web browser in the
    following URL http://localhost:8000

3. Once in the http://localhost:8000 you can use the following users to login. Different users have different privileges.

    | User      | Password  |
    | --------- | --------- |
    | root      | root      |
    | teacher   | teacher   |
    | assistant | assistant |
    | student   | student   |

## Save your work

In order to save your work and publish the course in [A+ e-learning system](https://plus.cs.aalto.fi/) you must store
the course project in <version.aalto.fi>.

### ❗️ Important

We **STRONGLY** recommend storing the course under the [course group](https://version.aalto.fi/gitlab/course). If you
do not have privileges to do so. You can send an email to <aplusguru@cs.aalto.fi> (We will set up the repository for
you).

If you do not want to store your course repository under the _course group_ in <version.aalto.fi>, you can create a
private repository. However, you **MUST** add the following people as "reporters" in your repository.

-   Teemu Lehtinen - @lehtint6
-   Markku Riekkinen - @riekkim1
-   Jhosimar Aguacia - @aguacij1
    .

## Additional information

**A+** has a wide variety of tools and configurations. Therefore, you may check all the different sources of information
available on our webpages and repositories.

-   [A+ webpage](https://apluslms.github.io/)
-   [A+ Manual](https://plus.cs.aalto.fi/aplus-manual/master/)
-   [A+ GitHub organization](https://github.com/apluslms/)
-   [LeTech GitHub organization](https://github.com/Aalto-LeTech)
-   [EDIT Wiki](https://wiki.aalto.fi/display/EDIT/)

## Contact us

Contact us by email: aplusguru@cs.aalto.fi
Contact us in Slack: <https://apluslms.slack.com/>, channel:#a-plus-help
