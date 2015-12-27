# find-replace

find text in a string and replace that text with another user-specified string

## The method 

The method `find-replace(<find>, <replace with>)` is called on the string of text to be searched, and takes two arguments as parameters. The first is the text to be found, the second is what it will be replaced with.

## The site

The user will input information into three fields. The first field is for the text to be searched. The second is for the text to be found within that string. The third is the text that will replace the found text. Upon clicking submit, the `find-replace()` method will be called on the three fields, and the resulting text will be displayed. Please note, the method will replace partial matches, i.e `"I am walking my cat to the cathedral".find_and_replace("cat", "dog")` would return the silly phrase "I am walking my dog to the doghedral."
