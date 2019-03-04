# Grespan-Mari's 2019 Incretin Model

Code accompanying Grespan-Mari's 2019 Incretin Model.  The model is described in the paper...

> E. Grespan, T. Giorgino, A. Natali, E. Ferrannini, A. Mari. *Different mechanisms of GIP
> and GLP-1 action explain their different therapeutic efficacy in type 2 diabetes*. (Preprint)


## Rationale

We have investigated the mechanisms of GIP and GLP-1 action, their impairment in type 2 diabetes and the reason underlying the lack of efficacy of GIP at pharmacological doses, an important unresolved question.

We have mathematically described the effects of incretins on cytosolic Ca2+ and on the glucose mediated amplifying pathway of insulin secretion. Based on experimental data in healthy subjects, we have concluded that GIP and GLP-1 increase insulin secretion rate by a transient Ca2+ increase and by potentiating the amplifying pathway. We found that potentiation of the amplifying pathway, described as an incretin-dependent factor Kincr>1, is key characteristic of GIP and GLP-1 action. 


## Model structure

The model extends [Grespan-Mari's beta-cell model](http://diabetes.diabetesjournals.org/content/67/3/496.abstract) 
incorporating the effect of the GIP and GLP-1 incretins.

![](figs/fig1.png)



## Results

We determined Kincr using data from eight in vivo published studies involving GIP and GLP-1 infusion or endogenous stimulation, in subjects with normal glucose tolerance and type 2 diabetes. We could thus reassess the GIP and GLP-1 effects from heterogeneous studies using a unifying method.  One reaches two main conclusions: 

 1. GIP action in type 2 diabetes is impaired (by ~50%) but not abolished, as often postulated; and
 2. the lack of efficacy of GIP at pharmacological doses in type 2 diabetes is not due GIP insensitivity but to the mechanism of GIP action, which, in contrast to GLP-1, presents a saturation already in the upper physiological range, even in healthy subjects.





# Output and preview

This code reproduces the paper's figures via Matlab's "publish" feature,
which renders an HTML file with inline comments and figures (tested in Matlab 2015b). The
rendered HTML and figures are found in the [html](html) directory of the repository. They may be previewed online
 [here](https://htmlpreview.github.io/?https://github.com/CNR-IN-MatMod/BetaCell2019/blob/master/html/IncretinModel_sim.html).


