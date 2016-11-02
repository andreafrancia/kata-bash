Metodo di risoluzione:
 - sviluppo incrementale: svilupperò una feature alla volta
 - todo-list: manterrò una todo-list con la lista le cose ancora da fare
 - splitting: ogni volta che è possibile splitterò lo sviluppo in task più piccoli
 - test-first: scrivo un test rosso prima di implementare la feature
 - userò spesso il pattern Fake It ('Til You Make It) per passare velocemente al verde
 - refactor dopo il verde: appena una feature passa applico il refactor per togliere la duplicazione
 - refactor prima del verde: prima di implementare la prossima feature potrei fare refactor per facilitare l'inserimento della feature successiva

# Exercise: String Calculator Kata

Adapted from: http://osherove.com/tdd-kata-1/ 

 1. Create a simple String calculator with a method int Add(string numbers).
 2. The method can take 0, 1 or 2 numbers, and will return their sum (for an empty string it will return 0). For example "" or "1" or "1,2"
 3. Allow the Add method to handle an unknown amount of numbers
 4. Allow the Add method to handle new lines between numbers (instead of commas), e.g. the following input is ok:  "1\n2,3"  will equal 6
 5. Support different delimiters. 
    1. To change a delimiter, the beginning of the string will contain a
       separate line that looks like this: `//[delimiter]\n[numbers...]`, for
       example `//;\n1;2` should return three where the default delimiter is `;`
       .
    2. the first line is optional. all existing scenarios should still be
       supported
 6. Calling Add with a negative number will throw an exception "negatives not
    allowed" - and the negative that was passed.if there are multiple negatives,
    show all of them in the exception message
 7. Numbers bigger than 1000 should be ignored, so adding 2 + 1001  = 2
 8. Delimiters can be of any length with the following format:  `//[delimiter]\n`
    for example: `//[***]\n1***2***3` should return 6
 9. Allow multiple delimiters like this:  `//[delim1][delim2]\n` for example
   `//[*][%]\n1*2%3` should return 6.
10. make sure you can also handle multiple delimiters with length longer than one
   char

