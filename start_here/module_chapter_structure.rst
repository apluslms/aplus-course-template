Module and Chapter structure
============================

.. styled-topic::

  Main questions:
    How should an A+ Module and Chapter be structured?

  Topics:
    In this section, we will talk about:

    * `Module structure`_
    * `Chapter structure`_

      * `Introduction`_
      * `Content`_
      * `Evaluation`_

  Requirements:
    #. You only need basic computing and programming skills, prior knowledge about markup languages might be beneficial.

  Estimated working time:
    30 min.


Module structure
----------------
The structure of each module is quite straighforward and does not required much explanation. However, there are couple of
concepts that are necessary to know in order to include every chapter in the table of content of your course.

As mentioned in the previous chapter, the **index.rst** file located in the root folder of your course will be the
responsible for linking each chapter to the main structure of your course. Therefore, you must add an **index.rst** file
in each module folder, and each of those files should be linked into your main **index.rst** file. The following example
show how this main **index.rst**, in the code line number 2, is linked to each to each **index.rst** in each module
and subsequently to each chapter.

.. code-block:: shell
  :caption: Course chapter structure
  :name: course-structure
  :linenos:
  :emphasize-lines: 2, 13, 19, 23, 33, 39

  ...
  ├── index.rst                           # Main index
  ├── introduction                        # Module folder
  │   ├── installation.rst
  │   ├── rst.rst
  │   ├── css.rst
  │   ├── git.rst
  │   ├── docker.rst
  │   ├── languages.rst
  │   ├── questionnaires.rst
  │   ├── gallery.rst
  │   ├── enrollment_en.rst
  │   └── index.rst                       # index of the Module
  ├── lti                                 # Module folder
  │   ├── lti_matlab_grader.rst
  │   ├── configuration.rst
  │   ├── introduction.rst
  │   └── index.rst                       # index of the Module
  ├── moodle_astra                        # Module folder
  │   ├── scripts
  │   ├── introduction.rst
  │   └── index.rst                       # index of the Module
  ├── programming_exercises               # Module folder
  │   ├── instructions.rst
  │   ├── hello_world.rst
  │   ├── personalized_exercises.rst
  │   ├── debugging_in_container.rst
  │   ├── radar.rst
  │   ├── graphics.rst
  │   ├── web_frontend.rst
  │   ├── ajax_exercise.rst
  │   └── index.rst                       # index of the Module
  ├─── rubyric                            # Module folder
  |   ├── introduction.rst
  |   ├── getting_started.rst
  |   ├── rubrics_and_reviews.rst
  |   ├── roles_and_groups.rst
  |   └── index.rst                       # index of the Module
  ...

.. code-block:: rst
  :caption: **index.rst** file of the rubyric module shown in the :ref:`above course structure (line 38)
    <course-structure>`. This index file links all the chapters that are part of the rubyric module. Observe, how these
    links do not include the extension of the file.

  Publish a Course
  ================

  .. toctree::

    introduction.rst
    getting_started.rst
    rubrics_and_reviews.rst
    roles_and_groups.rst

.. code-block:: rst
  :caption: Main **index.rst** file located at the root of the course folder in the :ref:`above course structure (line
    2) <course-structure>`. It links all the index files that are part of the course. In this case we only have one module.

  A sample course
  ===============

  This index lists an entry for each learning module on course.
  Other content is not visible in A+.

  .. toctree::
    :maxdepth: 2

  introduction/index
  lti/index
  moodle_astra/index
  programming_exercises/index
  rubyric/index

Chapter structure
-----------------
Once you have linked each chapter to the course structure, it is time to add some content to the chapters. Again, A+
have no restriction on how to layout the chapters, but below you can find some basic instructions on how to create an
organised and appealing course.

Introduction
............
One of our recommendations is to always include a header or introduction to the chapter. In fact, there is a directive
called `styled-topic` which is meant for such a purpouse. For example:

.. code-block:: rst
  :caption: Styled topic implementation

  .. styled-topic::

    Main questions:
        How to run the template course? and how to install the required software in your computer?

    Topics:
      In this section, we will present the following topics:

      * `Knowledge prerequisites`_
      * `Software prerequisites`_
      * `Cloning this codebase with git`_

    Material:
      In this chapter, we do not provide additional material.

    Requirements:
      You need basic computational skills to install some software in the Linux OS, and some knowledge on git.

    Estimated working time:
      From 30 min to 1 hour.

.. figure:: /images/start_here/styled-topic-directive.png
  :width: 100%
  :class: img-responsive img-thumbnail
  :align: center

  View of the `styled-topic` directive in a web browser.

Content
.......
A+ is by definition a Learning Management System (LMS). Therefore, one of the goals of A+ is to provided content to the
students, in this case we are talking about educational content.

Each course can decide how to present the educational material and how to teach students. However, we recommend to make
use of different type of sources for teaching. In A+ you can include almost any content inside courses such as, local
videos, youtube videos, images, annotated code, Learning Tools Interoperability (LTI), and embedded webpages.

.. important::

  If you want to create slides out of your course, please read how to do it in the
  `A+ Manual <https://plus.cs.aalto.fi/aplus-manual/master/>`_.

Evaluation
..........
A+ has several tools for automatically evaluating the students assigments. Some of the most used tools in A+ are the
following:

- Automated Graders

  * `Shell <https://github.com/apluslms/grading-base>`_
  * `Python <https://github.com/apluslms/grade-python>`_
  * `Scala <https://github.com/apluslms/grade-scala>`_
  * `NodeJS <https://github.com/apluslms/grade-nodejs>`_
  * `NodeJs and Zombie <hhttps://github.com/apluslms/grading-nodejs-zombie>`_
  * `Web <https://github.com/apluslms/grade-web>`_
  * `Python Web <https://github.com/apluslms/grading-python-web>`_
  * `Java <https://github.com/apluslms/grade-java>`_
  * `Ocatve <https://github.com/apluslms/grade-octave>`_
  * `MiniZinc <https://github.com/apluslms/grading-minizinc>`_
  * `Clingo <https://github.com/apluslms/grading-clingo>`_
  * `Z3 <https://github.com/apluslms/grading-z3>`_


- `Acos exercises <https://acos.cs.aalto.fi/>`_

- Aplus RST Tools

  * `Questionnaires <https://github.com/apluslms/a-plus-rst-tools#1-graded-questionnaire>`_
  * `Submitable exercises <https://github.com/apluslms/a-plus-rst-tools#3-submittable-exercise>`_
  * `Active elements <https://github.com/apluslms/a-plus-rst-tools#6-active-element-input>`_

- `Rubyric <https://rubyric.cs.hut.fi/>`_

::::

We recomend to follow the basic structure in writting, start with a **brief introduction**, then **present the subject**
and finally **assess** the knowledge of your students. This structure is simple enough to follow and quite efficient for
teaching. A+ also offer the possibility to provide support to the students through our Queueing system for lab sessions
`Neuvontajono <https://github.com/apluslms/neuvontajono>`_, and our Pastebin service `Koodisäilö
<https://github.com/apluslms/koodisailo>`_ designed to allow the students to save their code for a short period of time
and share the links with staff members to get help.

.. rst-class:: pull-right

| :glyphicon-info-sign:`\ ` **Read more about**  `A+ features <https://plus.cs.aalto.fi/aplus-manual/master/>`_

|

In this chapter, you learnt how to structure you chapter in a quick and simple manner. Nevertheless, you are free to
organise the chapter based on your needs. Now, the next step is to publish the course in our official `A+ website
<https://plus.cs.aalto.fi/>`_.
