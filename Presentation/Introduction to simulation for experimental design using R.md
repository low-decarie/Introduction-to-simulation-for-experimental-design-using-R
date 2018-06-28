Introduction to simulation for experimental design using R
===
author: Etienne Low-Décarie
date: 12 July 2018

Gettint to know each other
===

<div align="center">
You?
<div>

***

Workshop
- Peer teaching and coding
  - I am one of your peers... correct me when I am wrong! etc.
- Post its
- Challenges
    - Don't look at solutions when given...

Schedule
===========

- Introduction
  - Review of what makes a good study/experiment
  - Experimentaly accounting for variability
  - Some classical experimental designs
- **~10:30AM - 30 minute coffee break**
  - Justification of simulation for experimental design
- Basic experiment simulation using a spreadsheet
- Sampling in R
  - Sampling a population
  - Sampling from a distribution
      
***

  - Repeated sampling and summary
  - Challenge: summary statistics from sample
- **~12:30PM - 60 minute lunch break**
- Experimental design setup in R
  - Challenge: Setting up an experimental design using R tools
- Simulating an experiment
  - Replicated simulation
  - Sensivitivy analysis
- **~15:30AM - 30 minute break**
- Dojo and/or work on your experiment

===

To consult the statistician after an experiment is finished is often merely to ask him to conduct a post mortem examination. He can perhaps say what the experiment died of.

`Sir Ronald Fisher, Presidential Address to the First Indian Statistical Congress, 1938. Sankhya 4, 14-17.`

<img src=https://serverdensity-wpengine.netdna-ssl.com/wp-content/uploads/2016/01/Write-a-postmortem.png width="500" style="float:right">



A good study/experiment
====

- Good question / good hypothesis
  - Falsifiable (testable)
      - Common issue: absence of evidence is not evidence of absence
  - Specific
  - Powerful: generalizable, leading to prediction
  - Empirical: direct to observation
  - Plausible
  
  *Recognizing that not all studies are aimed at hypothesis testing.*
  
  ***
  
  ![bear behind a tree](https://i.redditmedia.com/A6yHPL1oOlTzoxo5Q_cibpmLNqZsrjUiqj6JNyfVQ-8.jpg?s=ada560e1ea5dd353e1303df798a361c9)
  

  
A good study/experiment
====

- Avoids
  - confounding variables
  - experimental artifacts
      - negative and positive controls

***

![confounding variable](https://upload.wikimedia.org/wikipedia/commons/d/d5/Confounding.PNG)

![experimental artifacts: bottle effect](http://www.icanbecreative.com/res/2011/10/19_110701002916.jpg)


Issues with experimental design: gene expression studies in human populations
===

'quantitative phenotype differs significantly between European-derived and Asian-derived populations'

[Common genetic variants account for differences in gene expression among ethnic groups](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3005333/pdf/nihms245973.pdf)

Issues with experimental design: gene expression studies in human populations
===

'Interestingly, the arrays used to measure expression for the CEU [European-derived] individuals were primarily processed from 2003 to 2004,whereas the arrays used to measure expression for the ASN [Asian-derived] individuals were all processed in 2005–2006.'

“microarray batch effects appear to be completely confounded with population effects.”

[On the design and analysis of gene expression studies in human populations](https://www.nature.com/articles/ng0707-807)

[reply](https://www.nature.com/articles/ng0707-808)



Issues with experimental design: sediment and herbivory
====


<img style="float:right" src=http://rsbl.royalsocietypublishing.org/content/roybiolett/8/6/1016/F1.medium.gif>

***


[Sediment suppresses herbivory across a coral reef depth gradient](http://rsbl.royalsocietypublishing.org/content/8/6/1016)

stratified with split plot
treatment: air gun and air lift (vacuuming)
control: plastic sheet protection

<img src=http://worldartsme.com/images/vacuum-free-clipart-1.jpg width="80">


A good study/experiment
====

Accounts for variability
  - replication
  - randomization
  - blocking
    - stratification
    - clustering    
    
    
Issues with experimental design: experimental lakes
===

![tractability to realism](tractability to realism.jpg)


A good study/experiment
====

- Orthogonal explanatory variables (and interactions)
- Balance
- Sufficient power
  - Replication vs pseudoreplication

***

![orthogonal design](https://www.researchgate.net/publication/275067733/figure/fig3/AS:322898121248768@1453996319116/Schematic-diagram-of-orthogonal-experimental-design.png)


Issues with experimental design: mesocosms
===

![tractability to realism](tractability to realism.jpg)

A good study/experiment
====

- Feasible!
- Results can be analyzed!


Issues with experimental design: my own experiments (1 of many issues)
===

<img src=https://media0.giphy.com/media/11WnprfX7TrF5K/giphy.gif width="250">

Challenge with:
- analyzing species vs major taxonomic group
- repeated assays through time/generations
- multiple responses of interest

[The effect of elevated CO2 on growth and competition in experimental phytoplankton communities](https://onlinelibrary.wiley.com/doi/full/10.1111/j.1365-2486.2011.02402.x)

***



![analysis table](fresh_CO2 community table.jpg)


Classes (broad categories)
===
Dependant\Independant| Continuous | Categorical
---|---|---
Continuous | Regression | ANOVA
Categorical | Logistic regression | Tabular


A bestiary of classical experimental designs
===

Many are optimal experimental designs if all required experimental units are available

- repeated measures
- complete randomized design (CRD)
- complete (block)
  - randomized:lattice, randomized complete block design (RCBD)
  - blocking two variables: Latin Square, Youden, Graeco, BIB, , Cyclic, augmented block
  - two variables of interest: split and strip plot Designs
-incomplete:lattice, Alpha design

***

![bestiary](https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/AberdeenBestiaryFolio005rAdamNamesAnimalsDetail.jpg/200px-AberdeenBestiaryFolio005rAdamNamesAnimalsDetail.jpg)

Famous failures of experimental design
===

Park grass experiment: Started by Lawes and Gilbert in 1856 (162 years old, pre-dates Fisher's work on experimental design at Rothemsted, location of experiment), its original purpose was to investigate ways of improving the yield of hay by the application of inorganic fertilizers and organic manure.

![park grass picture](park_grass_pict.jpeg)


Issues with experimental design: park grass
===

![Park grass schematic](The-Park-Grass-Experiment-with-details-of-fertilizer-and-liming-treatments-For-further.png)


Challenge: Park grass
===

Park grass :
- What questions can you ask with the park grass experiment as it was designed?

Redisgn park grass experiment:

1. Given the experimental units provided (22 rows x 4 columns + 11 cells= 99) which of the park grass experiment questions  (effect of N, P, Na, etc.) would you address and how?
2. Given the questions park grass experiment, come up with a minimal design that addresses the historic set of questions/hypothesis

* Maybe start by listing the treatments and or associated questions.  This could be done by specifying the complete model in R style formula syntax.

Coffee break
===

30 minutes

![need coffee](https://media2.giphy.com/media/DrJm6F9poo4aA/giphy.gif)


Park grass
===

Analysis despite flaws in experimental design: [Determinants of Species Richness in the Park Grass Experiment](http://oro.open.ac.uk/2295/1/Crawley_etal_2005.pdf)

Park grass inspired experiment using proper experimental design:  [Effects of grassland management on plant C:N:P stoichiometry:implications for soil element cycling and storage](https://esajournals.onlinelibrary.wiley.com/doi/epdf/10.1002/ecs2.1963) (example publication, dozens of related publications)


Why simulate?
===



Why simulate?
===

- Eliminate the need for dice when playing Dungeons and Dragons
- Dry run of experimental design
  - Good allocation of experimental effort
  - vs optimal (ie algorithmic) allocation of experimental effort?
- Test/understand a statistical approach
- Explore theory/hypotheses
- Bad reason: Fake data...

[examples](http://serc.carleton.edu/sp/library/datasim//examples.html)

***
![Dungeons and Dragons dice](danddice.jpeg)

Basic experiment simulation using a spreadsheet
===

- Effect of nitrogen and phosphorus on phytoplankton density in mesocosms
  
![screenshot](spreadsheet_sim_screen_shot.png)


Challenge
===

Create a spreadsheet simulation of an experiment testing :

- testing the effect of nitrogen, phosphorus and [CO2] in mesocosms

and/or

- testing difference between species in how (supra-optimal or full range) temperature affects their running spead

and/or

- the effect of gear choice and location on fisherman's catch

<div class="centered">

<script src="countdown.js" type="text/javascript"></script>
<script type="application/javascript">
var myCountdown2 = new Countdown({
    							time: 600, 
									width:150, 
									height:80, 
									rangeHi:"minute"	// <- no comma on last item!
									});

</script>

</div>

Issues with experiment simulation using a spreadsheet
===

**What were issues you identified?**


Issues with experiment simulation using a spreadsheet
===

- tedious setup
    - design (repetitive copy pasting)
    - multiple trials (very long sheet)
    - etc.
- requires switching to R for downstream steps
- limited types of distributions
- ...


Sampling from a defined population in R
========================================================

Throwing a six face die

Create the die

```r
die <-seq(from=1, to=6, by=1)
```
Throw the die

```r
sample(x=die, size=1, replace=T)
```

```
[1] 4
```

Sampling from a population
========================================================

Throw the 1000 times and keep the results

```r
die_results <- sample(x=die,
                      size=1000,
                      replace=T)
```


Sampling from a population
========================================================

Plot the results

```r
hist(die_results,
     breaks=seq(from=0.5,
                to=6.5,
                by=1))
```
***
![plot of chunk unnamed-chunk-5](Introduction to simulation for experimental design using R-figure/unnamed-chunk-5-1.png)


3D die (just because we can)
========================================================

```r
#load TeachingDemos
require(TeachingDemos)
#create the die
rgl.die()
#roll the regular die
roll.rgl.die(steps=10)
```
***
`TeachingDemos` also contains a `dice` that throws `ndice`, `rolls` times

```r
dice(rolls=3,
     ndice=4,
     sides=6,
     plot.it=T,
     load=rep(1, 6))
```

Challenges
========================================================

1. Throw a 10 faced die
2. Throw a coin
3. Throw cheaters die that produces 6 50% of the time


<div class="centered">

<script src="countdown.js" type="text/javascript"></script>
<script type="application/javascript">
var myCountdown2 = new Countdown({
    							time: 300, 
									width:150, 
									height:80, 
									rangeHi:"minute"	// <- no comma on last item!
									});

</script>

</div>

Solutions
========================================================

```r
die10 <-seq(from=1, to=10, by=1)
```


```r
coin <- c("head", "tails")
```


```r
p_dice<-c(1,1,1,1,1,5)
die_results <- sample(x=die,
                      size=1000,
                      replace=T,
                      prob= p_dice)
```

Sampling from a distribution
========================================================

Normal distribution

```r
rnorm(n = number of observations,
      mean = vector of means,
      sd = vector of means)
```

Sampling from a distribution
========================================================

Normal distribution

```r
sample_norm <- rnorm(n = 10000,
                     mean = 10,
                     sd = 1)
hist(sample_norm)
```

![plot of chunk unnamed-chunk-12](Introduction to simulation for experimental design using R-figure/unnamed-chunk-12-1.png)

Bestiary of distributions
========================================================

Available in base r:    
beta `beta`, binomial `binom`, Cauchy `cauchy`, chi-squared `chisq`, exponential `exp`, Fisher F `f`, gamma `gamma`, geometric `geom`, hypergeometric `hyper`, logistic `logis`, lognormal `lnorm`, negative binomial `nbinom`, normal `norm`, Poisson `pois`, Student t `t`, uniform `unif`, Weibull `weibull`

[Distribution task view](https://cran.r-project.org/web/views/Distributions.html)

***

![choice of distributions](https://magesblog.com/img/magesblog/distributions.png)

Challenges
========================================================

1. Create a sample representing the number of dolphins seen per 10 hours of observation, for 100 observations (hint: assuming this is a number of independent events occurring in a fixed time)
2. Create a sample representing the frequency of species in a quadrat (hint: assuming a few species will be very common and many species will be very rare)

<div class="centered">

<script src="countdown.js" type="text/javascript"></script>
<script type="application/javascript">
var myCountdown2 = new Countdown({
    							time: 300, 
									width:150, 
									height:80, 
									rangeHi:"minute"	// <- no comma on last item!
									});

</script>

</div>


Solutions
========================================================


1.

```r
dolphins <- rpois(n = 1000,
                  lambda = 3)
hist(dolphins)
```

![plot of chunk unnamed-chunk-13](Introduction to simulation for experimental design using R-figure/unnamed-chunk-13-1.png)


Solutions
========================================================

2.

```r
species <- rlnorm(n = 1000,
                  mean = 25,
                  sd=1)
hist(species)
```

![plot of chunk unnamed-chunk-14](Introduction to simulation for experimental design using R-figure/unnamed-chunk-14-1.png)


Challenge
===

- Import one of your spreadsheet simulation into R
- Creat a plot of the data simulated in Excel
- In `R`, create a new column containing simulated values using a more sensible distribution of error

<div class="centered">

<script src="countdown.js" type="text/javascript"></script>
<script type="application/javascript">
var myCountdown2 = new Countdown({
    							time: 600, 
									width:150, 
									height:80, 
									rangeHi:"minute"	// <- no comma on last item!
									});

</script>

</div>

Lunch break
===

60 minutes

![hungry](https://media2.giphy.com/media/GnCc88zZhSVUc/giphy.gif)


Simulating an experiment
========================================================

design setup "manually"

Example 2 factors, 2 levels, 3 replicates, full factorial

```r
one_replicate <- data.frame(factorA=factor(rep(c("FacA_Level1",
                                     "FacA_Level2"),
                                     2)),
                            factorB=factor(rep(c("FacA_Level1",
                                     "FacA_Level2"),
                                     each=2)))
head(one_replicate)                              
```

```
      factorA     factorB
1 FacA_Level1 FacA_Level1
2 FacA_Level2 FacA_Level1
3 FacA_Level1 FacA_Level2
4 FacA_Level2 FacA_Level2
```



Simulating an experiment
========================================================

Replication


```r
experiment1 <- NULL
for(i in LETTERS[1:3]){
  one_replicate$replicate <- factor(i)
  experiment1 <- rbind(experiment1,one_replicate)
}
head(experiment1)
```

```
      factorA     factorB replicate
1 FacA_Level1 FacA_Level1         A
2 FacA_Level2 FacA_Level1         A
3 FacA_Level1 FacA_Level2         A
4 FacA_Level2 FacA_Level2         A
5 FacA_Level1 FacA_Level1         B
6 FacA_Level2 FacA_Level1         B
```


Experimental design R tools
===

<iframe src="https://cran.r-project.org/web/views/ExperimentalDesign.html"></iframe>


Simulating an experiment
========================================================

Assume factors a and b have equal effect size and
have an additive effect (no interactions)

```r
experiment1$mean <- with(experiment1,
                        as.numeric(factorA)+
                          as.numeric(factorB))
head(experiment1)
```

```
      factorA     factorB replicate mean
1 FacA_Level1 FacA_Level1         A    2
2 FacA_Level2 FacA_Level1         A    3
3 FacA_Level1 FacA_Level2         A    3
4 FacA_Level2 FacA_Level2         A    4
5 FacA_Level1 FacA_Level1         B    2
6 FacA_Level2 FacA_Level1         B    3
```


Simulating an experiment
========================================================


```r
experiment1$response <- rnorm(n=length(experiment1$mean),
                             mean=experiment1$mean,
                             sd=1)
head(experiment1)
```

```
      factorA     factorB replicate mean response
1 FacA_Level1 FacA_Level1         A    2 2.469372
2 FacA_Level2 FacA_Level1         A    3 2.517810
3 FacA_Level1 FacA_Level2         A    3 2.264110
4 FacA_Level2 FacA_Level2         A    4 2.168116
5 FacA_Level1 FacA_Level1         B    2 2.161433
6 FacA_Level2 FacA_Level1         B    3 3.920972
```

Challenge
========================================================

1. Plot experiment 1
2. Analyze experiment 1
- You know that both factorA and factorB have an additive effect, can you detect this form this experiment?
- If you can detect an effect, what could you do to save money/time etc in this experiment?
- If you can not detect an effect, what would you need to do to detect the known effect?

<div class="centered">

<script src="countdown.js" type="text/javascript"></script>
<script type="application/javascript">
var myCountdown2 = new Countdown({
    							time: 300, 
									width:150, 
									height:80, 
									rangeHi:"minute"	// <- no comma on last item!
									});

</script>

</div>

Solution
========================================================

1.

```r
require(ggplot2)
p <- qplot(data=experiment1,
           x=factorA,
           y=response,
           colour=factorB,
           geom="boxplot")
print(p)
```

![plot of chunk unnamed-chunk-19](Introduction to simulation for experimental design using R-figure/unnamed-chunk-19-1.png)

Solution
========================================================

2.

```r
fit <- aov(data = experiment1,
           response~factorA*factorB)
summary(fit)
```

```
                Df Sum Sq Mean Sq F value Pr(>F)
factorA          1  1.835  1.8355   2.878  0.128
factorB          1  0.434  0.4338   0.680  0.433
factorA:factorB  1  0.982  0.9817   1.539  0.250
Residuals        8  5.102  0.6377               
```

```r
plot(fit)
```

![plot of chunk unnamed-chunk-20](Introduction to simulation for experimental design using R-figure/unnamed-chunk-20-1.png)![plot of chunk unnamed-chunk-20](Introduction to simulation for experimental design using R-figure/unnamed-chunk-20-2.png)![plot of chunk unnamed-chunk-20](Introduction to simulation for experimental design using R-figure/unnamed-chunk-20-3.png)![plot of chunk unnamed-chunk-20](Introduction to simulation for experimental design using R-figure/unnamed-chunk-20-4.png)

Accelerate the process
========================================================

Experimental setup using tools


```r
require(AlgDesign)
experiment2 <- gen.factorial(levels=c(3,2,2),
                             nVars=3,
                             varNames=c("A","B","C"),
                             factors="all")
```
[Experimental design task view](https://cran.r-project.org/web/views/ExperimentalDesign.html)

Sensitivity analysis
===

Accelerate the process
===

Optimize the design using tools

For certain types of design, the allocation of experimental units can be optimized using established algorithsm.

For example,in some cases, a full factorial design can be reduced to a carefully selected subset of cases with only a marginal effect on estimated parameters.

see ```R vignette("AlgDesign")```

- optBlock {AlgDesign}
- optFederov {AlgDesign}

Challenge
========================================================

1. Create a data set simulating the effect of waste water runoff and intensive scuba diving for biodiversity (hint: species counts) of coral reefs
2. Plot the results
3. Analyze the results (hint: counts are not normaly distributed)

<div class="centered">

<script src="countdown.js" type="text/javascript"></script>
<script type="application/javascript">
var myCountdown2 = new Countdown({
    							time: 300, 
									width:150, 
									height:80, 
									rangeHi:"minute"	// <- no comma on last item!
									});

</script>

</div>

Coffee break
===

30 minutes

![need caffeine](https://media2.giphy.com/media/oZEBLugoTthxS/giphy.gif)

Dojo
===

Dojo: deliberate practice

- pair/team coding

Alternative: pair/team coding on each other's experiments (turns focusing on each experiment in the team).

Dojo 1
===

Produce an optimal design for the treatments in the Park Grass experiment



Dojo 2
===

Design an experiment to:
- Detect the effect of biodiversity on ecosystem process
  - Include a species that has a high contribution to ecosystem function compared to the average of all other species
  - Include a pair of species that seperatly do not contribute to the process, but together have a strong impact on diversity
  - How many levels of biodiversity should your experiment contain?
  - How many replicate communities are needed at each level?
  - Can blocking help distinguish between composition effects (eg. sampling effect) and diversity effect?
  
[Detecting the Effects of Diversity on Measures of Ecosystem Function: Experimental Design, Null Models and Empirical Observations](http://www.jstor.org/stable/3547487?origin=JSTOR-pdf)

Dojo 3
===