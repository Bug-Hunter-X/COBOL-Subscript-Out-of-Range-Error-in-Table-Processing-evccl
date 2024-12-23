# COBOL Subscript Out-of-Range Bug

This repository demonstrates a common, yet subtle, error in COBOL programs involving table processing.  Specifically, it showcases a potential subscript out-of-range error that can occur when a loop iterates beyond the defined bounds of a table.

The `bug.cob` file contains the problematic code. The `bugSolution.cob` file provides a corrected version with appropriate bounds checking.

**The Bug:**

The original code initializes a table `WS-TABLE` with 100 entries.  The loop iterates from 1 to 100, seemingly harmlessly filling up the table.  However, if any part of the program modifies the number of entries (e.g., through external input or dynamic allocation), the loop could attempt to access beyond the allocated space, leading to unpredictable program behavior or termination.