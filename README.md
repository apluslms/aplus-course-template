## Course template for A-plus learning environment

This course template contains the necessary files and configurations to start authoring a new course for the
[A+ e-learning system](https://plus.cs.aalto.fi/). This template can be freely modified and adapted to your needs.

## Requirements

This course templated has been tested in Ubuntu Linux environment. Nevertheless, this course should also work on any
Unix / Linux / Mac environment. In order to run the course locally, you should install the following software.

-   [git](https://git-scm.com/)
-   [make](https://www.gnu.org/software/make/)
-   [docker](https://docs.docker.com/engine/installation/)
-   [docker-compose](https://docs.docker.com/compose/install/)

All other software runs inside [Docker](https://www.docker.com/) containers.

## Download

There are two options for downloading the course template. Either way, the result is the same. Therefore, you can decide
wich of the following two approaches to take.

### Option A: Clone the repository and all the submodules

You can download this template recursively (that means including the [A-plus-rst-tools](https://github.com/apluslms/a-plus-rst-tools)

```sh
git clone --recursive https://github.com/apluslms/aplus-course-template.git <name of your course>
```

### Option B: Clone the repository and the submodules manually

You can download the main repository and initialise the [A-plus-rst-tools](https://github.com/apluslms/a-plus-rst-tools)
submodule manually.

```sh
git clone https://github.com/apluslms/aplus-course-template.git <name of your course>
git submodule init && git submodule update
```

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

    This script, as its name suggests, compiles the course slightly faster and also stores the compiled files inside the
    **\_build** directory. However, this command does not find changes in exercise YAML files unless you have also modified
    the RST files that link to the exercises. When you modify exercises, use `docker-compile.sh` in order to
    ensure that your changes are included in the build.

2. Open the terminal, go to the course director and type the next command.

    ```sh
    ./docker-up.sh
    ```

    If the `./docker-up.sh` command run successfully, you should be able to access your course in any web browser in the
    following URL http://localhost:8000

3. Once in the http://localhost:8000 you can use the following users to login. Different users have different privileges.

    | User       | Password   |
    | ---------- | ---------- |
    | root       | root       |
    | teacher    | teacher    |
    | assistant  | assistant  |
    | student    | student    |
    | unenrolled | unenrolled |

## Save your work

In order to save your work and publish the course in [A+ e-learning system](https://plus.cs.aalto.fi/), you need to store
the course project in the university's GitLab server <version.aalto.fi>.

### ❗️ Important

We **STRONGLY** recommend storing the course under the [course group](https://version.aalto.fi/gitlab/course). If you
do not have privileges to do so, you can send an email to <aplusguru@cs.aalto.fi> (We will set up the repository for
you). You may also do this in the new course instance request form:
https://wiki.aalto.fi/display/EDIT/Requests+for+course+instances

If you do not want to store your course repository under the _course group_ in <version.aalto.fi>, you can create a
private repository. You need to add the service account "apluslms" with the Reporter role to the course project
so that the A+ servers can clone the course.
(In the version.aalto.fi project, open Settings -> Members from the left sidebar.)

## Additional information

**A+** has a wide variety of tools and configurations.
The information and instructions are scattered in many locations.

-   [A+ webpage](https://apluslms.github.io/)
-   [A+ Manual](https://plus.cs.aalto.fi/aplus-manual/master/)
-   [A+ manual git repo](https://github.com/apluslms/aplus-manual)
-   [A+ GitHub organization](https://github.com/apluslms/)
-   [EDIT Wiki](https://wiki.aalto.fi/display/EDIT/)
-   [A-plus-rst-tools README - custom RST directives](https://github.com/apluslms/a-plus-rst-tools/blob/master/README.md)
-   [MOOC-Grader YAML configurations](https://github.com/apluslms/mooc-grader/blob/master/courses/README.md)

Teacher support channels are listed in the EDIT wiki:
https://wiki.aalto.fi/display/EDIT/Instructions+and+support+for+teachers+and+TAs+at+CS+department
