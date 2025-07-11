# Assigment Collection 

Use this template to store multiple assigments from a course, and then preview your work in a single pdf, with integrated table of content and automatic hyperlinks.

# Version

Currently at version 0.1

- The module is stable and it works, but key requirements are needed for improvements.

## Structure:

The structure of the code is as follows:

/appendix                                    <- The .tex in the appendix are currently using a double coloumn design

  - axioms.tex                       
  - definitions.tex                   
  - propositions.tex
  - theorem.tex

/assigments                                  <- How you define the structure of the assigments is to your choise, although keep it simple     
  
  /extra
    - example1
  
  /Formative
    - formative1
  
  /Homework
    - homework1

/design                                      <- (optional) gives different designs to a assigments, is not mandatory to use. It also reduced the posibility of code leak between assigments.
  
  - DesignA.tex                                    <- DesignA is just a top head indicating name, course, duedate, carnet, and title. Use this for assigments.
  - DesignB.tex                                    <- DesignB doesn't have a header, use this for the appendix.     

/sty                                         <- These are global enviroments/macros and so it can be used in any file.
  
  - env-demonstraciones.sty                   <- Provides enviroments for the demonstracion which is equivalent to \proof
  
  - env-problema.sty                          <- Provides enviroments to how problems are designed in any assigments
  
  - environments.sty                          <- Controls which enviroment can be compiled, useful for debudding.
  
  - macros.sty                                <- Personal macros to be used anywhere in the proyect
  
  - packages.sty                              <- These are the packages being use in the proyect, any new package put them here to have them well organized.
  
  - refsheet.sty                              <- Handles the internal reference process and counting for the enviroments in the appendix

/z_figures                                   <- Here goes your plots
  
  - plot.jpg                                    

main.tex                                     <- Where you specified which assigments are going to compile

reference.bib                                <- Here goes your reference (currently not assigned to the main.tex)

setassigment.cls                             <- Most important module, controls how every assigment is handle.


## Usage:

**Important**, for simplicity the Name, Carnet, and Course are defined globally in setassigment.cls, you can change them to your pleasure (line 41).

Create a new assigment in the folder /assigments,

If you want to use a label, *highly recommended*, insert:

```
\begin{assignment}{DesignA}

\end{assignment}
```

**Important** Inside the \begin{assigment}\end{assigment} include the following line to insert the header:

```
\useDesignAactivate
```

Optional:
Add a title:
```
\subtitle{ }
```

Optional:
Add the due date:

```
\duedate{ }
```

Optiona:
Add a reference to the table of contents:

```
\addcontentsline{toc}{chapter}{ }
```
*In the third parameter is what is shown in the table of content*

Then you are free to do the assigment as you like, currently you may use the following enviroments:

To insert a problem (in spanish):

```
\begin{problema}

\end{problema}
```

To insert a demonstration (in spanish)

```
\begin{demostracion}

\end{demostracion}
```

### Changelog

Check the changelog for any update 



(You are welcome.)
