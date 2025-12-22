Introduction
============

Write your content in chapters like this one.
This chapter contains an example questionnaire and a programming exercise.

.. questionnaire:: questionnaire_demo 50
  :title: Example questionnaire
  :points-to-pass: 30
  :submissions: 10

  The maximum points of this questionnaire are 50,
  but only 30 are required to pass.

  .. pick-one:: 10

    Subdirective ``pick-one`` defines a single-choice question.
    When :math:`(x + 1)^3 = 27`, what is :math:`x`?

    a. 9
    *b. 2
    c. 3

    a § Not quite. Remember the cube root.
    c § Rather close. Remember that you can add or subtract the same number to the both sides of the equation.

  .. pick-one:: 10
    :dropdown:

    If the option ``dropdown`` is used for a single-choice question,
    the question can be transformed into a dropdown-type, such as this.

    What is the type of this entire exercise?

    a. programming exercise
    *b. questionnaire
    c. general feedback of the course

  .. pick-any:: 10

    Subdirective ``pick-any`` defines a multiple-choice question.

    When :math:`(x + 1)^2 = 16`, what is :math:`x`?

    a. 4
    *b. an integer
    *c. 3
    d. an irrational number
    e. -3
    *f. -5
    ?g. neutral option

    a § Rather close. Remember that you can add or subtract the same number to the both sides of the equation.
    !b § If option "an integer" is not chosen, this hint will be shown.
    d § No. This equation has a nice and easy solution.

  .. pick-any:: 10
    :partial-points:

    Checkbox questions defined with ``pick-any`` can have the option ``partial-points``.
    Students are then granted points also for partially correct answers. You can try it out
    below.

    For instance, in this case there are three correct answers, the grading goes as follows:
    1 correct = 3 points,
    2 correct = 6 points,
    3 correct = 10 points.

    And for the wrong answers:
    1 wrong option chosen = 3 points deducted,
    2 wrong options chosen = 6 points deducted,
    3 wrong options chosen = 10 points deducted.

    When :math:`(x + 1)^2 = 16`, what is :math:`x`?

    a. 4
    *b. an integer
    *c. 3
    d. an irrational number
    e. -3
    *f. -5

  .. freetext:: 10

    This is the most basic free text questionnaire. The correct answer is
    ``test``. You can write at most 10 characters into the box. When defining the question
    remember to add an empty line between the instructions and correct answers.

    test
    !test § Hint: follow the instructions.

.. submit:: python 10
  :config: exercises/hello_python/config.yaml
