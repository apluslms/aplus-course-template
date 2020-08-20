Course structure
================

.. styled-topic::

  Main questions:
    How should an A+ course be structured?

  Topics:
    In this section, we will talk about:

    * `Root`_
    * `Static and templates`_
    * `Aplus RST Tools`_
    * `Modules And Chapters`_
    * `Exercises`_

  Requirements:
    #. You only need basic computing and programming skills, prior knowledge about markup languages might be beneficial.

  Estimated working time:
    30 min.

The folder structure of the course is not limited by any means. Therefore, you are free to organise the course according
to your needs. However, we **STRONGLY** recommend to follow the guidelines presented in this chapter.This template
provides you with a set of folders and files that have a specific purpose. Therefore, it is important to understand the
role of each of these files and folders within the course.

.. code-block:: bash
  :caption: Folder structure of this template

  .
  ├── _build
  ├── _static
  │   ├── css
  │   └── js
  └── _templates
  ├── └── layout.html
  ├── a-plus-rst-tools
  ├── course_material
  ├── exercises
  ├── guides
  │   ├── course_structure.rst
  │   ├── from_zero_to_hero.rst
  │   ├── index.rst
  │   ├── publish.rst
  │   └── quick_start.rst
  ├── images
  ├── apps.meta
  ├── build.sh
  ├── conf.py
  ├── course.yml
  ├── docker-compile.sh
  ├── docker-compose.yml
  ├── docker-fast-compile.sh
  ├── docker-up.sh
  ├── index.rst
  ├── LICENSE
  ├── make.bat
  ├── Makefile
  └── README.md

Root
----
the root folder of your course contains several files that are necessary to run the course in `the
A+ e-learning system <https://plus.cs.aalto.fi/>`_.

- **conf.py:** It contains course-specific configuration as well as configuration related to the Sphinx building process.
  Most of the time you will have to modify the **conf.py** file to define specific behaviours in your course.

  Visit the `Aplus RST Tools repository`_ and check some values that can be changed in the **conf.py** file.

- **index.rst:** It is the main index file that is used to create the TOC tree of the course. Therefore, every file
  should be linked to the main **index.rst**.

- **docker-compose.sh:** It contains settings related to the docker container that will be used in the course. The most
  commom container that are used in the courses are: the `apluslms:run-mooc-grader`, the `apluslms/run-aplus-front` and
  the `apluslms:run-acos-server`. You can use this file to add or remove some of
  `our dockerised services <https://hub.docker.com/u/apluslms/>`_.

- **docker-compile.sh**, **docker-fast-compile.sh** and **docker-up.sh** are files used to compile and run the course
  locally. You should not modify those files unless you are certain of what you are doing.

- **.gitignore** and **.gitmodules** are files related to the git. `.gitignore <https://git-scm.com/docs/gitignore>`_ is
  used to decide which files are going to be shared in your repository. `.gitmodules <https://git-scm.com/docs/gitmodules>`_
  is used to list the submodules that are going to be used in the course.

- **build.sh** This file is used to compile the course in the server. Therefore, you should **NOT REMOVE** this file from
  your course.

- **README.md** is used to describe the content of your course project. Therefore, you must edit this file and add
   information related to the course project.

.. important::

  As a rule of thumb, do not delete any of the files located in the root directory. This template contain only the
  required files needed to run the course in the A+ platform.

Static and templates
--------------------
The `_static` folder contains static files such as CSS and JS. The `_templates` folder contains the basic HTML template
used to render the course content. If needed, you can add your own CSS and JS to the `_static` folder. Implementing your
own CSSs and/or JSs will allow you to modify some behaviours of the course or exercises. However, this type of
modifications should be implemented carefully. Remember to add the reference to the new static files inside the
``_templates/layout.html`` file. For example:

.. code-block:: html
  :caption: **_templates/layout.html** file.

  <head>
  <script src="ignored.js"></script>
  <script src="support.js" data-aplus></script>
  <link rel="stylesheet" href="support.css" data-aplus>
  </head>


As you can see in the example above, you **MUST** add the `data-aplus` flag. You can find more information about remote
content in the `Aplus documentation <https://github.com/apluslms/a-plus/blob/master/doc/CONTENT.md#a-remote-content>`_

Aplus RST Tools
---------------
The **a-plus-rst-tools** directory is actually a git submodule folder which contains the source code of the
`Aplus RST tools repository`_. This submodule is an essential part of the
A+ courses and is highly recommended to keep this submodule in the course. The **Aplus RST tools** provide a set of
directives designed to expand the features of the reStructuredText language.

.. warning::

  You should not make changes or commit changes implemented in the **a-plus-rst-tools** folder to your course repository.

Modules And Chapters
--------------------
The A+ courses are divided into modules (folders), and each module is divided into chapters. Therefore, each module must
contain one or more chapters (RST files). The rule of thumb for creating modules is to cover a topic per each module and
cover subtopics in each chapter. However, some teachers also prefer to use the modules to group the content of the course
in weeks. The images bellow show both approaches in two different courses.

.. figure:: /images/gallery/modules-topics.png
  :align: center
  :scale: 40%
  :class: img-responsive img-thumbnail
  :alt: image with an example on how the modules should look like if grouped by topic.

  Figure 1. Example of how the modules should look like if they are grouped by topic. Image taken from the
  `CS-C3140 Operating Systems course. <https://plus.cs.aalto.fi/os/2020/>`_

.. figure:: /images/gallery/modules-weeks.png
  :align: center
  :scale: 40%
  :class: img-responsive img-thumbnail
  :alt: image with an example on how the modules should look like if grouped by weeks.

  Example of how the modules should look like if they are grouped by weeks. Image taken from the
  `CS-A1110 Ohjelmointi 1 course. <https://plus.cs.aalto.fi/o1/2020/>`_

Exercises
---------
Do we need all different exercises here? Is this a bit duplicate information to the A+ manual? Maybe one or two
working examples would be sufficient if this is suppose to be a very boilerplate / bare-minimum start guide?

The **exercises** contains the course exercises, which are invoked through the `.. submit::`, `.. acos-submit::`
and some other directives designed to submit exercises to the
`mooc-grader <https://github.com/apluslms/mooc-grader>`_. As you can see in this course template each exercise is stored
in independent folders. Next, you can see some basic examples of exercises that use different grading
containers designed for different programming languages and/or topics.

.. rst-class:: pull-right

| :glyphicon-info-sign:`\ ` **Read more about**  `Submit directives <https://github.com/apluslms/a-plus-rst-tools#3-submittable-exercise>`_ and `config.yaml for exercises <https://github.com/apluslms/mooc-grader/tree/master/courses>`_

|

::::

Shell
.....
.. submit:: shell 10
  :config: exercises/hello-shell/config.yaml


Python
......
.. submit:: python 10
  :config: exercises/hello_python/config.yaml

.. submit:: personalized_names 10
  :config: exercises/personalized_python/config.yaml

.. submit:: turtles 100
  :config: exercises/turtle_python/config.yaml
  :title: Turtle


Scala
.....
.. submit:: scala 10
  :config: exercises/hello_scala/config.yaml


Javascript
..........
.. submit:: javascript 10
  :config: exercises/hello_javascript/config.yaml

.. submit:: clock 10
  :config: exercises/clock/config.yaml
  :title: Clock

Active elements
...............
.. ae-input:: exponentlambdain
  :title: Parameter lambda \( \lambda \) for the exponential distribution
  :default: 0.4
  :class: active-element ae-input left
  :width: 20%
  :height: 155px

.. ae-output:: exponentialdist
  :config: exercises/aelements/exponentialdist/config.yaml
  :inputs: exponentlambdain
  :title: Probability density function and the cumulative distribution function of the exponential distribution
  :type: html
  :class: active-element left no-border
  :scale-size:
  :width: 70%

.. rst-class:: clear-float

Acos
....
These Acos-exercises show the error-message "Connecting to the exercise service failed!" by default.
Could that be configurated?

.. acos-submit:: 2 10
  :title: jsparsons Python while loop
  :url: /aplus/jsparsons/jsparsons-python/ps_python_iteration_addition

.. acos-submit:: 5 10
  :title: Point and click Creative Commons
  :url: /aplus/pointandclick/pointandclick-example/cc-Creative_commons

.. acos-submit:: 12 10
  :title: Drag and drop algorithms
  :url: /aplus/draganddrop/draganddrop-example/articles-Algorithms

.. warning::

  For no reason you should place the exercises inside the module folders or in any other folder. Having all the exercises
  inside the **exercises** folder will help the A+ team to debug your course and help you solve any issue that you may
  have.


.. _`Aplus RST tools repository`: https://github.com/apluslms/a-plus-rst-tools
