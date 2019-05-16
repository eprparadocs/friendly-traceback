��    D      <  a   \      �  J   �  �   ,  �     >   �  L  6  �   �	  �   U
  x   <  $  �  �   �  G  �  <     =   >  h   |  �   �  �  �  �   �  T     �   d  &   �  '     N   ?  K   �  3   �  +        :  �   H     �  �   
  _   �     �  3   �  {   3  �   �  �   ^  i     E   u  x   �  I   4  T   ~  �   �  L   \  q   �  k     N   �  v   �  q   M  N   �  �     �   �  H   N  [   �  I   �  X   =     �   m   �!     "     "     !"     7"     L"     S"     f"     l"     }"  %   �"     �"  z  �"  }   9$    �$    �%  _   �&  �  E'  �   �(    �)  �   	+  Z  �+  �   -  �  	.  C   �/  N   �/  j   )0  �   �0  j  �1  �   �3  u   �4  �   5  )   �5  (   �5  A   6  C   N6  7   �6  C   �6     7  �   7     8  �   +8  a   �8     %9  9   79  ~   q9  �   �9  �   �:  �   �;  B   <  �   P<  [    =  f   \=  �   �=  T   \>  o   �>  s   !?  W   �?  �   �?  �   r@  X   �@  �   VA  �   1B  _   �B  `   9C  n   �C  t   	D  B  ~D  z   �E  
   <F     GF     fF     F     �F     �F     �F  "   �F     �F  *   G     .G                 ?   9   $       =       '   >       <         6   8      D      (      1   3   :   /                      %           -      #   !                .          0       &                    *   B   	             ,                   @   ;       5   A   
                 )          C                  7       4   +                   2           "    A KeyError is raised when a value is not found as a
key in a Python dict.
 A ModuleNotFoundError exception indicates that you
are trying to import a module that cannot be found by Python.
This could be because you misspelled the name of the module
or because it is not installed on your computer.
 A NameError exception indicates that a variable or
function name is not known to Python.
Most often, this is because there is a spelling mistake.
However, sometimes it is because the name is used
before being defined or given a value.
 A SyntaxError occurs when Python cannot understand your code.
 A TabError indicates that you have used both spaces
and tab characters to indent your code.
This is not allowed in Python.
Indenting your code means to have block of codes aligned vertically
by inserting either spaces or tab characters at the beginning of lines.
Python's recommendation is to always use spaces to indent your code.
 A TypeError is usually caused by trying
to combine two incompatible types of objects,
by calling a function with the wrong type of object,
or by tring to do an operation not allowed on a given type of object.
 A ZeroDivisionError occurs when you are attempting to divide
a value by zero:
    result = my_variable / 0
It can also happen if you calculate the remainder of a division
using the modulo operator '%'
    result = my_variable % 0
 An IndentationError occurs when a given line of code is
not indented (aligned vertically with other lines) as expected.
 An IndexError occurs when you are try to get an item from a list,
a tuple, or a similar object (sequence), by using an index which
does not exists; typically, this is because the index you give
is greater than the length of the sequence.
Reminder: the first item of a sequence is at index 0.
 ArithmeticError is the base class for those built-in exceptions
that are raised for various arithmetic errors.
It is unusual that you are seeing this exception;
normally, a more specific exception should have been raised.
 Currently, we cannot guess the likely cause of this error.
Try to examine closely the line indicated as well as the line
immediately above to see if you can identify some misspelled
word, or missing symbols, like (, ), [, ], :, etc.

You might want to report this case to
https://github.com/aroberge/friendly-traceback/issues

 Exception raised on line {linenumber} of file '{filename}'.
 Execution stopped on line {linenumber} of file '{filename}'.
 I do not recognize this case. Please report it to
https://github.com/aroberge/friendly-traceback/issues
 In Python, some objects are known as immutable:
once defined, their value cannot be changed.
You tried change part of such an immutable object: {obj},
most likely by using an indexing operation.
 In Python, variables that are used inside a function are known as 
local variables. Before they are used, they must be assigned a value.
A variable that is used before it is assigned a value is assumed to
be defined outside that function; it is known as a 'global'
(or sometimes 'nonlocal') variable. You cannot assign a value to such
a global variable inside a function without first indicating to
Python that this is a global variable, otherwise you will see
an UnboundLocalError.
 In this case, the line identified above
is more indented than expected and 
does not match the indentation of the previous line.
 In this case, the line identified above
was expected to begin a new indented block.
 In this case, the line identified above is
less indented than the preceding one,
and is not aligned vertically with another block of code.
 In this case, the sequence is a list.
 In this case, the sequence is a tuple.
 In your program, the name of the
module that cannot be found is '{mod_name}'.
 In your program, the name of the key
that cannot be found is '{key_name}'.
 In your program, the unknown name is '{var_name}'.
 Level {level} not available; using default. Likely cause: LookupError is the base class for the exceptions that are raised
when a key or index used on a mapping or sequence is invalid.
It can also be raised directly by codecs.lookup().
 My best guess: No information is known about this exception.
Please report this example to
https://github.com/aroberge/friendly-traceback/issues
 Python could not parse the file '{filename}'
beyond the location indicated below by --> and ^.
 Python exception: The object that could not be imported is '{name}'.
 The object that could not be imported is '{name}'.
The module or package where it was 
expected to be found is '{module}'.
 The variable that appears to cause the problem is '{var_name}'.
Perhaps the statement
    global {var_name}
should have been included as the first line inside your function.
 This exception indicates that a certain object could not
be imported from a module or package. Most often, this is
because the name of the object is not spelled correctly.
 Unfortunately, no additional information is available:
the content of file '<string>' is not accessible.
 You meant to use Python's 'elif' keyword
but wrote '{name}' instead

 You starting writing a string with a single or double quote
but never ended the string with another quote on that line.
 You tried to add two incompatible types of objects:
{first} and {second}
 You tried to concatenate (add) two different types of objects:
{first} and {second}
 You tried to define {class_or_function}
and did not use the correct syntax.
The correct syntax is:
    def name ( optional_arguments ):
 You tried to divide two incompatible types of objects:
{first} and {second}
 You tried to do an order comparison ({operator})
between two incompatible types of objects:
{first} and {second}
 You tried to exponentiate (raise to a power)
using two incompatible types of objects:
{first} and {second}
 You tried to multiply two incompatible types of objects:
{first} and {second}
 You tried to perform the bit shifting operation {operator}
on two incompatible types of objects:
{first} and {second}
 You tried to perform the bitwise operation {operator}
on two incompatible types of objects:
{first} and {second}
 You tried to subtract two incompatible types of objects:
{first} and {second}
 You tried to use the operator {operator}
using two incompatible types of objects:
{first} and {second}.
This operator is normally used only
for multiplication of matrices.
 You tried to use the unary operator '{operator}'
with the following type of object: {obj}.
This operation is not defined for this type of object.
 You wanted to define {class_}
but forgot to add a colon ':' at the end

 You were trying to assign a value to the Python keyword '{keyword}'.
This is not allowed.

 You wrote a '{for_while}' loop but
forgot to add a colon ':' at the end

 You wrote a statement beginning with
'{name}' but forgot to add a colon ':' at the end

 You wrote an expression like
    {literal} = {name}
where <{literal}>, on the left hand-side of the equal sign, is
an actual number or string (what Python calls a 'literal'),
and not the name of a variable. Perhaps you meant to write:
    {name} = {literal}

 You wrote something like
    import {function} from {module}
instead of
    from {module} import {function}

 a class a complex number a dictionary ('dict') a function or method a list a number ('float') a set a string ('str') a tuple a variable equal to None ('NoneType') an integer ('int') Project-Id-Version: 
POT-Creation-Date: 2019-05-16 12:40-0300
PO-Revision-Date: 2019-05-16 12:42-0300
Last-Translator: André Roberge <andre.roberge@gmail.com>
Language-Team: 
Language: fr
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Generated-By: pygettext.py 1.5
X-Generator: Poedit 2.2.1
Plural-Forms: nplurals=2; plural=(n > 1);
 Une erreur KeyError est levée lorsqu’une valeur n’est pas trouvée
en tant que clé dans un dictionnaire (dict) Python.
 Une exception ModuleNotFoundError indique que vous
essayez d’importer un module qui ne peut pas être trouvé par Python.
Cela pourrait être parce que vous fait une faute d'orthographe
écrivant le nom du module, ou parce qu’il n’est pas installé sur votre ordinateur.
 Une exception NameError indique que le nom d'une variable
ou d'une fonction n'est pas connue par Python.
Habituellement, ceci indique une simple faute d'orthographe.
Cependant, cela peut également indiquer que le nom a été
utilisé avant qu'on ne lui ait associé une valeur.
 Une exception de type SyntaxError se produit lorsque python ne peut pas comprendre votre code.
 Un exception de type TabError indique que vous avez utilisé des espaces
ainsi que des caractères de tabulation pour indenter votre code.
Cela n’est pas autorisé dans Python.
L’indentation de votre code signifie que le bloc de codes est aligné
verticalement en insérant des espaces ou des tabulations au début des lignes.
La recommandation de Python est de toujours utiliser des espaces
pour indenter votre code.
 Une exception TypeError est généralement causée une tentative
de combiner deux types d’objets incompatibles,
en invoquant une fonction avec le mauvais type d’objet,
ou en tentant d'effectuer une opération non permise sur un type d'objet donné.
 Une exception de type ZeroDivisionError se produit lorsque
vous tentez de diviser une valeur par zéro:
    résultat = ma_variable / 0
Ceci peut également se produire si vous calculez le reste d’une division 
à l’aide de l’opérateur modulo '%'
    résultat = ma_variable % 0
 Une exception de type IndentationError se produit lorsqu'une ligne de code
n'est pas indentée (c'est-à-dire alignée verticalement avec les autres lignes)
de la façon attendue.
 Un IndexError se produit lorsque vous essayez d’obtenir un élément
d'une liste, d'un tuple, ou d'un objet similaire (séquence), à l’aide d’un index qui
n’existe pas; typiquement, c’est parce que l’index que vous donnez
est plus grand que la longueur de la séquence.
Rappel: le premier élément d'une séquence est à l'index 0.
 ArithmeticError est la classe de base pour les exceptions
qui sont soulevées pour diverses erreurs arithmétiques.
Il est inhabituel que vous voyiez cette exception;
normalement, une exception plus spécifique aurait dû être soulevée.
 Présentement, nous ne pouvons pas deviner la cause probable de cette erreur.
Essayez d’examiner attentivement la ligne indiquée ainsi que celle
immédiatement au dessus pour voir si vous pouvez identifier
un mot mal orthographié, ou des symboles manquants, comme (,), [,],:, etc.

Vous pouvez indiquer que c'est le cas au site suivant:
https://github.com/aroberge/friendly-traceback/issues

 Exception levée à la ligne {linenumber} du fichier '{filename}'.
 L'exécution s'est arrêtée à la ligne {linenumber} du fichier '{filename}'
 Je ne reconnais pas ce cas. Veuillez le signaler à
https://github.com/aroberge/friendly-traceback/issues
 Dans Python, certains objets sont connus comme immuables:
une fois définis, leur valeur ne peut pas être modifiée.
Vous avez essayé de modifier une partie d’un tel objet immuable: {obj},
probablement en utilisant une opération d’indexation.
 En Python, les variables utilisées à l’intérieur d’une fonction sont appelées
variables «locales».
Avant d’utiliser une variable locale, une valeur doit lui être attribuée.
Une variable utilisée avant l’attribution d’une valeur est supposée
être définie en dehors de cette fonction;
elle est connu comme une variable «globale» ('global' ou parfois 'nonlocal').
Vous ne pouvez pas assigner une valeur à une telle variable globale
à l’intérieur d’une fonction sans d’abord confirmer à python
qu’il s’agit d’une variable globale, sinon vous verrez une exception UnboundLocalError.
 Dans ce cas-ci, la ligne indiquée ci-dessus par -->
est plus indentée que ce qui était attendu et ne
correspond pas à l'indentation de la ligne précédente.
 Dans ce cas-ci, la ligne indiquée ci-dessus par --> devrait
normalement commencer un nouveau bloc de code indenté.
 Dans ce cas-ci, la ligne indiquée ci-dessus par -->
est moins indentée que la ligne précédente
et n’est pas alignée verticalement avec un autre bloc de code.
 Dans ce cas, la séquence est une liste.
 Dans ce cas, la séquence est un tuple.
 Dans votre programme, le nom du module inconnu est '{mod_name}'.
 Dans votre programme, le nom de la clé inconnue est '{key_name}'.
 Dans votre programme, le nom inconnu est '{var_name}'.
 Niveau {Level} non disponible; la valeur par défaut est utilisée. Cause probable : LookupError est la classe de base pour les exceptions qui sont levées
lorsqu’une clé ou un index utilisé sur un tableau de correspondance ou une séquence est invalide.
Elle peut également être levée directement par codecs.lookup().
 Ma meilleure hypothèse : Aucune information n’est connue à propos de cette exception.
Veuillez signaler cet exemple à
https://github.com/aroberge/friendly-traceback/issues
 Python peut seulement analyser le fichier '{filename}'
jusqu'à l'endroit indiqué par --> et ^.
 Exception Python: L’objet qui n’a pas pu être importé est' {name} '.
 L’objet qui n’a pas pu être importé est '{name}'.
Le module ou le paquet d'où il devait être importé est '{module}'.
 La variable qui semble causer le problème est' {var_name} '.
Il est possible que vous avez oublié d'écrire l’instruction
    global {var_name}
comme première ligne à l’intérieur de votre fonction.
 Cette exception indique qu’un certain objet n’a pas pu
être importé à partir d’un module ou d’un paquet. Très souvent, c’est
parce que le nom de l’objet n’est pas écrit correctement.
 Malheureusement, aucune information supplémentaire n’est disponible:
le contenu du fichier '<string>' n’est pas accessible.
 Vous avez écrit '{name}'
au lieu d'utiliser le mot-clé 'elif'.

 Vous aviez commencer à écrire une chaîne de caractères
avec un guillemet simple ou double, mais n'avez jamais
terminé la chaîne avec un autre guillemet sur cette ligne.
 Vous avez essayé d’additionner deux types d’objets incompatibles:
{first} et {second}
 Vous avez essayé de concaténer (additionner) deux types d’objets différents:
{first} et {second}
 Vous vouliez définir {class_or_function},
mais vous avez fait des erreurs de syntaxe.
La syntaxe correcte est:
    def nom ( arguments_optionnels ) :

 Vous avez essayé de diviser deux types d’objets différents:
{first} et {second}
 En utilisant {operator}, vous avez tenté de comparer
deux types d’objets incompatibles:
{first} et {second}
 Vous avez essayé d'élever à une puissance
en utilisant deux types d’objets incompatibles:
{first} et {second}
 Vous avez essayé de multiplier deux types d’objets différents:
{first} et {second}
 Vous avez essayé d’effectuer l’opération de décalage {operator}
sur deux types d’objets incompatibles:
{first} et {second}
 Vous avez essayé d’effectuer l’opération binaire bit à bit {operator}
sur deux types d’objets incompatibles:
{first} et {second}
 Vous avez tenté de soustraire deux types d’objets incompatibles:
{first} et {second}
 Vous avez essayé d’utiliser l’opérateur {operator}
à l’aide de deux types d’objets incompatibles:
{first} et {second}.
Cet opérateur est normalement utilisé uniquement
pour la multiplication des matrices.
 Vous avez essayé d’utiliser l’opérateur unaire '{operator}'
avec le type d’objet suivant: {obj}.
Cette opération n’est pas définie pour ce type d’objet.
 Vous vouliez définir {class_},
mais vous avez oublié d’ajouter deux points ':' à la fin.

 Vous essayiez d’assigner une valeur au mot clé Python '{keyword}'.
Ceci n’est pas permis.

 Vous vouliez débuter une boucle '{for_while}'
mais vous avez oublié d’ajouter deux points ':' à la fin.

 Vous avez écrit un énoncé débutant avec
'{name}' mais vous avez oublié d’ajouter deux points ':' à la fin.

 Vous avez écrit une expression comme
    {literal} =  {name}
où <{literal}>, sur le côté gauche du signe égal, est ce que Python
appelle un 'literal', c'est-à dire soit soit une chaîne de caractères ou un nombre,
et non le nom d’une variable. Peut-être que vous vouliez plutôt écrire:
    {name} = {literal}

 Vous avez écrit quelque chose comme
    import {function} from {module}
au lieu de
    from {module} import {function}


 une classe un nombre complexe ('complex') un dictionnaire ('dict') une fonction ou une méthode une liste ('list') un nombre ('float') un ensemble ('set') une chaîne de caractères ('str') un tuple une variable de valeur 'None' ('NoteType') un entier ('int') 