Quick start
===========

.. styled-topic::

  Main questions:
    How to add content, compile and run your course locally?

  Topics:
    In this section, we will talk about:

    * `Add content to your course`_
    * `Compile and Build`_

  Requirements:
    #. You only need basic computing and programming skills, prior knowledge about markup languages might be beneficial.

  Estimated working time:
    30 min.

We assume that you downloaded and ran the course for the first time according to the instructions provided in the
`README.md <https://github.com/apluslms/aplus-course-template/blob/master/README.md>`_ file.

Add content to your course
--------------------------
The courses in A+ are built with a markdown language called `reStructuredText (RST)
<https://en.wikipedia.org/wiki/ReStructuredText>`_. You can learn more about this markdown language in `the official RST
website <https://docutils.sourceforge.io/rst.html>`_ or in our more tailored instructions created in the `A+ Manual
<https://plus.cs.aalto.fi/aplus-manual/master/rst/>`_. Thanks to the flexibility of the RST language, A+ offers a
myriad of possibilities for creating content in your course. You can create courses with simple text, images, tables and
some other static content. Nevertheless, you can also add **smart-learning** material, interactive tools, questionnaires
, among many other interactive teaching tools.

Feel free to explore the different features available in A+ in our
`Aplus manual <https://plus.cs.aalto.fi/aplus-manual/master/>`_. You can also explore some of the current and archive
courses in the `A+ website <https://plus.cs.aalto.fi/>`_ and see how other teachers have designed their courses. The
following course are some of the most prominent courses in A+ and therefore we recommend you to spend some time
checking out these courses.

- `https://plus.cs.aalto.fi/cs-a1113/2020/ <Basics in Programming Y1>`_
- `https://plus.cs.aalto.fi/a1143/2020/johdanto_1143/1143_peruskasitteita/ <Data Structures and Algorithms Y>`_
- `https://plus.cs.aalto.fi/o1/2020/ <Basics of Programming O1>`_

Compile and Build
-----------------
Once you have some content to the template, compile and run the course in your browser. For doing so, you must open the
terminal in your course directory and type the following command.

.. code-block:: bash
  :caption: Compile the course locally

  ./docker-compile.sh

**OR**

.. code-block:: bash
  :caption: Compile the course locally using the cached copy of previous compiled courses, if any.

  ./docker-fast-compile.sh

If the compilation is successful, you can run the course locally in your web browser by running the following command.

.. code-block:: bash
  :caption: Compile the course locally

  ./docker-up.sh

After you have a success message in the terminal, you can open your preferred web browser and open the following web
address http://loacalhost:8000. Once you open your course in the browser, go and check the images, text, or exercises
you added. It is really important to pay attention to the compilation and building messages. If you are having troubles
compiling the course or running the docker containers, please contact the A+ Team and ask for support.

Every time you make changes in the RST code, you will need to compile the course and wait until the changes are reflected
in the browser. If the changes you have made are related to code other than simple RST, e.g., submit directives,
acos_exercises, index.rst files, you must open the course page. Click in the :glyphicon-cog:`\ `
**Edit course** menu item, select the **Content** tab and click on the **Apply** button.

Now, you should be able to add content to your course and test it inyour web browser. In the next chapter, we will show
you how to structure yor course.
