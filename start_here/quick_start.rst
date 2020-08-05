Quick start
===========

.. styled-topic::

  Main questions:
    How to add content, compile and run your course locally?

  Topics:
    In this section, we will talk about:

    * `Create content`_
    * `Add content to your course`_
    * `Compile and Build`_

  Requirements:
    #. You only need basic computing and programming skills, prior knowledge about markup languages might be beneficial.

  Estimated working time:
    30 min.

Once you have a local copy of this template on your computer, you should be ready to start creating the content of your
course and subsequently publish the course in A+. There is a basic series of steps that will lead you to publish your
course in A+ and make available for everyone. In this quick start guide, we will teach you how to create content for your
course, hot to test the content in your computer, and how to make it publically available.

Create content
--------------
The first thing to do before start authoring a course is to initialise the
`Aplus rst tools <https://github.com/apluslms/a-plus-rst-tools>`_. The **Aplus RST TOlls** are not absolutely necessary
for creating a course but are highly recommend. Start by typing the following commands.

.. code-block:: bash

  git submodule init && git submodule update

This command will pull the version of the **Aplus RST tools**, definded in the .git/modules/a-plus-rst-tools/HEAD file,
into your course.

.. warning::

  If you are updating a course you should also update the git submodule, before creating a new course or new course
  instance.

In order to update to the latest version of the `Aplus rst tools <https://github.com/apluslms/a-plus-rst-tools>`_. Open
the terminal in the course directory and type the following commands.

.. code-block:: bash
  :caption: update submodule to the latest commit

  cd a-plus-rst-tools
  git chekout master
  git pull
  cd ..  # to the course repository
  git add a-plus-rst-tools
  git commit -m 'Update a-plus-rst-tools'
  git push

Add content to your course
--------------------------
A+ has an innumerable amount of possibilities. You can create courses with simple text, images, tables and some other
static content. Nevertheless, you can also add **smart-learning** material, interactive tools, questionnaires, among many
other interactive teaching tools.

Feel free to explore the different features available in A+ in our `Aplus manual <https://plus.cs.fi/aplus-manual>`_.
You can also explore some of the current and archive courses in the `A+ <https://plus.cs.fi/aplus-manual>`_ and see how
these features have been implemented in different courses.

Compile and Build
-----------------
Once you have some content to the template, compile and run the course in your browser. For doing so, you must open the
terminal in your course directory and type the following command.

.. code-block:: bash
  :caption: Compile the course loacally

  ./docker-compile.sh

or

.. code-block:: bash
  :caption: Compile the course locally using the cached copy of previous compiled courses, if any.

  ./docker-fast-compile.sh

If the compilation is successful, you can run the course locally in your web browser by running the following command.

.. code-block:: bash
  :caption: Compile the course loacally

  ./docker-up.sh

After you have a success message in the terminal, you can open your preferred web browser and open the following web
address http://loacalhost:8000.

.. important::

  Pay attention to the compilation and building messages. If you are having troubles compiling the course or runnind the
  docker containers, please contact the A+ Team.

Every time you make changes in the RST code, you will need to compile the course and wait until the changes are reflected
in the browser. If the changes you have made are related to code other than simple RST, e.g., submit directives,
acos_exercises, index.rst files among many others, you must open the course page. Click in the :glyphicon-cog:`\ `
**Edit course** menu item, select the **Content** tab, and click on the **Apply** button.






