Programming Exercise: Code a Reverse-Polish Calculator

In Reverse Polish notation the operators follow their operands; for instance, to add three and four one would write "3 4 +" rather than "3 + 4". If there are multiple operations, the operator is given immediately after its second operand; so the expression written "3 − 4 + 5" in conventional infix notation would be written "3 4 − 5 +" in RPN: first subtract 4 from 3, then add 5 to that.

Example:

The infix expression "5 + ((1 + 2 + 3) * 4) − 3" can be written down like this in RPN:

5 1 2 + 4 * + 3 -


Instructions:

Your Calculator should handle:

1) At least 4 numbers in sequence

2) The four basic arithmetic operations (+, -, *, /).

3) Use “standard in” and “standard out” to accept and return data. Pressing “q” should quit the application.


Sample:

    > 5

    5

    > 1

    1

    > 2

    2

    > +

    3

    > 4

    4

    > *

    12

    > +

    17

    > 3

    3

    > -

    14

    > q

    goodbye