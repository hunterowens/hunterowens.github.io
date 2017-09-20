library(DiagrammeR)

mermaid("
graph LR
        A(Rounded)-->B[Rectangular]
        B-->C{A Rhombus}
        C-->D[Rectangle One]
        C-->E[Rectangle Two]
        ")