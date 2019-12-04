# Grespan-Mari's 2019 Incretin Model

For an outline of the study, see *The different mechanisms of action of GIP and GLP-1 explain their different efficacy as therapeutic agents in type 2 diabetes*, [Diabetologia (2018) 61(Suppl 1)](https://doi.org/10.1007/s00125-018-4693-0) and [page 250, abstract #511](https://www.easd.org/virtualmeeting/home.html#!resources/the-different-mechanisms-of-action-of-gip-and-glp-1-explain-their-different-efficacy-as-therapeutic-agents-in-type-2-diabetes).

This code accompanies Grespan-Mari's 2019 Incretin Model described in the paper:

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
 
 
# List of PubMed studies considered

The following list is also provided in the [Excel format](PubMed%20search%20results.xlsx).

Reference | DOI | Included | Reason | Comment
-------|----|----|----|----
Aaboe, K. J Clin Endocrinol Metab 2009 | 10.1210/jc.2008-1731 | no | Only T2D | 
Aaboe, K. Diabetes Obes Metab 2010 | 10.1111/j.1463-1326.2009.01167.x | no | Only T2D | 
Aaboe, K. Diabetes Obes Metab 2015 | 10.1111/dom.12395 | no | Only T2D | 
Ahn, C. H. Diabetes Obes Metab 2018 | 10.1111/dom.13081 | no | GIP on top of GLP-1 | 
Amland, P. F. Scand J Gastroenterol 1985 | 10.3109/00365528509091656 | no | No HGC+GIP | 
Andersen, D. K. J Clin Invest 1978 | 10.1172/jci109100 | no | OGTT on clamp | 
Asmar, M. Diabetes 2010 | 10.2337/db10-0098 | yes |  | HI-HG clamp.
Asmar, M. Int J Obes (Lond) 2014 | 10.1038/ijo.2013.73 | no | No saline or control | HI-HG clamp.
Asmar, M. J Clin Endocrinol Metab 2016 | 10.1210/jc.2016-1933 | no | Somatostatin in HI-HGC | HI-HG clamp.
Asmar, M. Nutr Diabetes 2016 | 10.1038/nutd.2016.15 | no | No saline or control | HI-HG clamp.
Asmar, M. Diabetes 2017 | 10.2337/db17-0480 | no | GIPR inhibitor only | HI-HG clamp + GIPR inhibitor
Asmar, M. Endocr Connect 2019 | 10.1530/ec-19-0144 | no | Secondary study | Same study as 2017
Byrne, M. M. Eur J Clin Invest 1998 | 10.1046/j.1365-2362.1998.00240.x | no | No HGC+GIP | 
Carrel, G. Am J Clin Nutr 2011 | 10.3945/ajcn.111.017574 | no | OGTT on clamp | 
Christensen, M. Diabetes 2011 | 10.2337/db11-0979 | yes |  | 
Christensen, M. B. J Clin Endocrinol Metab 2014 | 10.1210/jc.2013-3644 | no | Only T2D | 
Clark, H. E. Horm Metab Res 1996 | 10.1055/s-2007-979835 | no | Only T2D, no GIP | 
Dirksen, C. Diabetologia 2013 | 10.1007/s00125-013-3055-1 | yes |  | 
Dirksen, C. Obes Surg 2016 | 10.1007/s11695-016-2197-x | no | No HGC+GIP | 
Egan, J. M. J Clin Endocrinol Metab 2002 | 10.1210/jcem.87.3.8337 | no | No HGC+GIP | 
Egan, J. M. Am J Physiol Endocrinol Metab 2003 | 10.1152/ajpendo.00315.2002 | no | Only T2D, no GIP | 
Elahi, D. J Clin Endocrinol Metab 1981 | 10.1210/jcem-52-6-1199 | no | No HGC+GIP | 
Elahi, D. Am J Physiol 1982 | 10.1152/ajpendo.1982.242.5.E343 | no | OGTT on clamp | 
Elahi, D. Diabetes 1984 | 10.2337/diab.33.10.950 | no | OGTT on clamp | 
Elahi, D. Regul Pept 1994 | 10.1016/0167-0115(94)90136-8 | yes |  | Not in PubMed search.
Fonseca, V. A. Metabolism 2004 | 10.1016/j.metabol.2004.05.009 | no | Only T2D, no GIP | 
Fung, M. Diabetes Res Clin Pract 2006 | 10.1016/j.diabres.2006.03.022 | no | No HGC+GIP | 
Gasbjerg, L. S. Diabetologia 2018 | 10.1007/s00125-017-4447-4 | yes |  | 
Gasbjerg, L. S. Bone 2019 | 10.1016/j.bone.2019.115079 | no | Secondary study | Same study as 2018
Geloneze, B. Metabolism 2014 | 10.1016/j.metabol.2014.04.004 | no | No HGC+GIP | 
Gogebakan, O. Diabetologia 2015 | 10.1007/s00125-015-3618-4 | no | HI-HGC w/o C-peptide | HI-HG clamp w/o C-peptide. Insulin in Suppl T2.
Groop, L. Diabetes 1987 | 10.2337/diab.36.11.1320 | no | No HGC+GIP | 
Gutniak, M. J Clin Endocrinol Metab 1986 | 10.1210/jcem-62-1-77 | no | Only T2D, no GIP | 
Halden, T. A. Diabetes Care 2016 | 10.2337/dc15-2383 | no | No controls, no GIP | 
Hansen, K. B. J Clin Endocrinol Metab 2012 | 10.1210/jc.2011-2594 | yes |  | 
Helderman, J. H. Diabetes 1983 | 10.2337/diab.32.2.106 | no | OGTT on clamp | 
Henchoz, E. Transplantation 2003 | 10.1097/01.tp.0000079833.86120.85 | no | OGTT on clamp | 
Henry, R. R. Diabetes Obes Metab 2011 | 10.1111/j.1463-1326.2011.01417.x | no | Only T2D, OGTT on clamp | 
Henry, R. R. J Clin Endocrinol Metab 2013 | 10.1210/jc.2013-1771 | no | No HGC+GIP | 
Heptulla, R. A. Pediatr Res 2000 | 10.1203/00006450-200005000-00012 | no | OGTT on clamp | 
Hojberg, P. V. Diabetologia 2009 | 10.1007/s00125-008-1195-5 | no | Included in main analysis | 
Jaghutriz, B. A. Front Endocrinol (Lausanne) 2019 | 10.3389/fendo.2019.00072 | no | No HGC+GIP | 
Jorgensen, M. B. J Clin Endocrinol Metab 2019 | 10.1210/clinem/dgz048 | yes |  | 
Karstoft, K. Am J Physiol Endocrinol Metab 2015 | 10.1152/ajpendo.00520.2014 | no | Use of somatostatin | 
Kashyap, S. R. Int J Obes (Lond) 2010 | 10.1038/ijo.2009.254 | no | T2D+RYGB, No HGC+GIP | 
Kim, J. Y. Diabetes Care 2016 | 10.2337/dc16-0352 | no | No HGC+GIP | 
King, D. S. Am J Physiol 1990 | 10.1152/ajpendo.1990.259.2.E155 | no | No HGC+GIP | 
Knop, F. K. Regul Pept 2007 | 10.1016/j.regpep.2007.07.002 | no | Included in main analysis | 
Knop, F. K. BMC Res Notes 2014 | 10.1186/1756-0500-7-326 | no | No saline or control | 
Kwon, D. Y. Eur J Nutr 2007 | 10.1007/s00394-006-0630-y | no | Animals | 
Limb, C. Pediatr Res 1997 | 10.1203/00006450-199703000-00010 | no | OGTT on clamp | 
Mager, D. E. J Pharmacol Exp Ther 2004 | 10.1124/jpet.104.069765 | no | No HGC+GIP | 
Meier, J. J. Diabetes 2001 | 10.2337/diabetes.50.11.2497 | yes | No saline | 
Meier, J. J. Metabolism 2003 | 10.1016/s0026-0495(03)00327-5 | no | No HGC+GIP | 
Meier, J. J. Diabetes 2004 | 10.2337/diabetes.53.suppl_3.s220 | no | Included in main analysis | 
Meier, J. J. Diabetologia 2005 | 10.1007/s00125-005-1863-7 | yes | No saline | 
Meier, J. J. World J Gastroenterol 2006 | 10.3748/wjg.v12.i12.1874 | no | No C-peptide/insulin | 
Meneilly, G. S. Diabetes Care 1993 | 10.2337/diacare.16.1.110 | no | Only T2D | 
Meneilly, G. S. J Clin Endocrinol Metab 1998 | 10.1210/jcem.83.8.5003 | yes |  | 
Michaliszyn, S. F. Diabetes 2014 | 10.2337/db13-1951 | no | No HGC+GIP | 
Mohandas, C. Diabetes Obes Metab 2018 | 10.1111/dom.13283 | no | Only T2D, No HGC+GIP | 
Mussig, K. Diabetes 2009 | 10.2337/db08-1589 | no | No HGC+GIP | 
Nauck, M. J Clin Endocrinol Metab 1989 | 10.1210/jcem-69-3-654 | yes |  | 
Nauck, M. A. J Clin Invest 1993 | 10.1172/jci116186 | no | Included in main analysis | 
Nissen, A. J Clin Endocrinol Metab 2014 | 10.1210/jc.2014-2547 | no | Secondary study | Data from Christiansen 2011
Park, S. Biosci Biotechnol Biochem 2009 | 10.1271/bbb.90276 | no | Animals | 
Pilgaard, K. Diabetologia 2009 | 10.1007/s00125-009-1307-x | yes | No saline | 
Pivovarova, O. Regul Pept 2012 | 10.1016/j.regpep.2012.08.004 | no | Secondary study | Subjects from Rudovich 2011, HGC+GIP
Plummer, M. P. Diabetologia 2016 | 10.1007/s00125-016-3878-7 | no | No HGC+GIP | 
Rabiee, A. J Surg Res 2011 | 10.1016/j.jss.2010.09.047 | no | No HGC+GIP | 
Reimers, J. Diabetologia 1988 | 10.1007/bf00277407 | no | No HGC+GIP | 
Rudovich, N. N. Diabetes 2004 | 10.2337/diabetes.53.9.2359 | yes | No saline | 
Rudovich, N. N. Regul Pept 2005 | 10.1016/j.regpep.2004.10.012 | yes | No saline | 
Rudovich, N. N. Am J Physiol Endocrinol Metab 2011 | 10.1152/ajpendo.00154.2011 | no | Use of diazoxide | HI-HG clamp with diazoxide
Schou, J. H. J Clin Endocrinol Metab 2005 | 10.1210/jc.2005-0382 | yes | No saline | 
Shalev, A. Eur J Clin Invest 1997 | 10.1046/j.1365-2362.1997.540613.x | no | No HGC+GIP | 
Shankar, S. S. Am J Physiol Endocrinol Metab 2018 | 10.1152/ajpendo.00238.2017 | no | OGTT on clamp | 
Sloop, K. W. Diabetes 2010 | 10.2337/db10-0689 | no | Animals | 
Takahashi, H. Scand J Clin Lab Invest 1991 | 10.3109/00365519109104558 | no | No HGC+GIP | 
Theodoropoulou, M. Front Neuroendocrinol 2013 | 10.1016/j.yfrne.2013.07.005 | no | Review | 
Thondam, S. K. Am J Physiol Endocrinol Metab 2017 | 10.1152/ajpendo.00347.2016 | yes |  | 
Vasu, S. J Endocrinol 2017 | 10.1530/joe-16-0453 | no | Animals | 
Veedfald, S. Am J Physiol Gastrointest Liver Physiol 2016 | 10.1152/ajpgi.00222.2015 | no | No HGC+GIP | 
Veedfald, S. J Clin Endocrinol Metab 2019 | 10.1210/clinem/dgz097 | no | Secondary study | Data from Christiansen 2011 & 2014
Verdonk, C. A. J Clin Invest 1980 | 10.1172/jci109765 | no | No HGC+GIP | 
Vilsboll, T. Diabetes Care 2000 | 10.2337/diacare.23.6.807 | no | No HGC+GIP | 
Vilsboll, T. Diabetologia 2002 | 10.1007/s00125-002-0878-6 | no | Included in main analysis | 
Vilsboll, T. J Clin Endocrinol Metab 2003 | 10.1210/jc.2003-030738 | no | Only T2D | 
Vilsboll, T. Regul Pept 2003 | 10.1016/s0167-0115(03)00111-3 | yes |  | Not in PubMed search. Multiple step HGC
Vollmer, K. J Clin Endocrinol Metab 2009 | 10.1210/jc.2008-2197 | no | OGTT on clamp | 
Woerle, H. J. Diabetes 2012 | 10.2337/db11-1701 | no | No HGC+GIP | 
Zhang, L. Biochem Biophys Res Commun 2014 | 10.1016/j.bbrc.2014.02.045 | no | Animals | Monkeys, no GIP




