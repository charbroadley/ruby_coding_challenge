# FreeAgent Coding Challenge

Thank you for your interest in the FreeAgent Coding Challenge.  This template is a barebones guide to get you started.  Please add any gems, folders, files, tests, etc. you see fit in order to produce a solution you're proud of.

## Coding Challenge Instructions

Please see the INSTRUCTIONS.md file for more information.

## Your Solution Setup and Run Instructions

No additional set up is required to the Getting Started Guide specified in the INSTRUCTIONS.md

## Your Design Decisions

This was my first time using Ruby outside of some very basic online tutorials. I was able to use the fundamental skills I have learned using other languages (primarily Python) to work through the problem.
Unfortunatley I did not get onto refactoring for different (non-JSON) sources of data and non-Euro base rates. I had already spent a few hours working on this and in the phone call on Wednesday 26th it was discussed that it was more important to show what we could acheive in a few hours rather then spending a day getting the perfect solution.
I would love to work on this more to crack it, but I hope that I have been able to demonstrate my ability to problem solve and to pick up new skills quickly!

Below is the order which I worked through things in:

1. Making sure I set everything up correctly on my laptop!

2. Pulling in data from the JSON file & making sure I can print values from it in the console

3. Exchange rate equation finding right values

4. Rates based on EUR so not being able to find EUR in the list shouldn't raise an exception - conditional statement used to calculate EUR values

5. Exception 1 - Added for if can't find a rate on the given date

6. Exception 2 - Added if unable to calculate requested rate

7. Refactoring - tidy up EUR conditional statement by using a ternary, tidy up exceptions
