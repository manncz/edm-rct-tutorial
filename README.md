# Tools for Planning &amp; Analyzing Randomized Controlled Trials &amp; A/B Tests



This repository contains the materials for the EDM 2024 half day tutorial "Tools for Planning &amp; Analyzing Randomized Controlled Trials &amp; A/B Tests" on 7/14/24. This tutorial is organized by Adam Sales, Johann Gagnon-Bartsch, Duy Pham, Charlotte Mann, and Jaylin Lowe.

The tutorial focuses on how to use the current version of the `dRCT` package in `R`.

## Contents
The contents are organized as follows:

- `data/`: processed data files and documentation
  - `ABexampleDataDictionary.md`: data dictionary for A/B test data ASSISSTMENTS
  - A/B example data:
    - `abTestExample.csv`
    - `auxiliaryLogData.csv`
    - `rctLogData.csv`
    - `yhatNN.csv`
  - Field test example data (AEIS) outputted by `00-data-setup.Rmd`:
    - `rct_aux_dat.Rdata`
    - `rct_schools.Rdata`
- `input/`: unprocessed data files
  - `README.md`: instructions for downloading AEIS data
  - `MS_data_public.Rdata`
  - `var_names.csv`: Cross-walk for cleaning variable names in AEIS data
- `scripts/`: all tutorial scripts to be run in order
  - `_installPackages.R`: contains code to install all packages used in tutorial scripts
  - `00-data-setup.Rmd`
  - `01-explore-aeis-data.Rmd`
  - `02-effect-est.Rmd`
  - `03-integrate-aux.Rmd`
  - `04-effect-estABtest.Rmd`
  - `04-effect-estABtestSolution.Rmd`
  - `compiled_tutorials/`: compiled versions of all tutorial scripts
- `temp/`: intermediate data artifacts
  - `auxpred.Rdata`: auxiliary predictions to be used in `03-integrate-aux.Rmd`

## Use

**Option 1 -- Run Everything:**
1. Follow the instructions from `README.md` in the `input/` directory to download the input AEIS data `MS_data_public.Rdata` from Google Drive.
2. Run `00-data-setup.Rmd`
3. Now the scripts can be run in any order, although we will work through the scripts in order for the workshop


**Option 2 -- Skip Data Build:**
1. Follow the instructions from `README.md` in the `data/` directory to download the processed data `rct_aux_dat.Rdata` and `rct_schools.Rdata` from Google Drive.
2. Now you can skip `00-data-setup.Rmd` and can run the scripts in any order

**Option 3 -- Run Nothing:**
1. Read through the compiled scripts in the `scripts/compiled_tutorials/` directory


## Real-Data Examples

We work through two real-data examples in this workshop - a educational school-level field experiment (AEIS data) and educational A/B tests (ASSISTMENTS).

#### AEIS Data and Synthetic RCT

In scripts `00`-`03`, we work through an example of analyzing a school-level field experiment using data provided by the Texas Education Agency called the Academic Excellence Indicator System ([AEIS](https://rptsvr1.tea.texas.gov/perfreport/aeis/index.html)). Data documentation can be found on the AEIS website [here](https://rptsvr1.tea.texas.gov/perfreport/aeis/2008/xplore/aeisref.html) and [here](https://rptsvr1.tea.texas.gov/perfreport/aeis/2008/masking.html).

We use an already processed version of the AEIS data for this tutorial (`MS_data_public.Rdata`). A detailed description of our data processing can be found on at [github.com/manncz/aeis-aux-rct](https://github.com/manncz/aeis-aux-rct).

Inspired by the Cognitive Tutor Algebra I Study (Pane et. al, 2014), we construct a synthetic RCT with the middle schools included in the Texas AEIS data for this workshop.

#### ASSISTMENTS Data

You then have the chance to implement what you learned in `04-efect-estABtest.Rmd`, with data from real educational A/B tests.


## References

Johann A. Gagnon-Bartsch, Adam C. Sales, Edward Wu, Anthony F. Botelho, John A.
Erickson, Luke W. Miratrix, and Neil T. Heffernan. *Precise unbiased estimation in randomized experiments using auxiliary observational data.* Journal of Causal Inference,
11(1):20220011, August 2023. URL:
https://www.degruyter.com/document/doi/10.1515/jci-2022-0011/html.

Kosuke Imai. *Variance identification and efficiency analysis in randomized experiments under the matched-pair design.* Statistics in Medicine, 27(24):4857–4873, October 2008. URL: https://onlinelibrary.wiley.com/doi/10.1002/sim.3337.

Kosuke Imai and Zhichao Jiang. *`experiment:` R Package for Designing and Analyzing Randomized Experiments.* April 2022. URL https://cran.r-project.org/web/packages/experiment/index.html.

John F. Pane, Beth Ann Griffin, Daniel F. McCaffrey, and Rita Karam. *Effectiveness of Cognitive Tutor Algebra I at Scale.* Educational Evaluation and Policy Analysis, 36(2):
127–144, June 2014. URL: https://doi.org/10.3102/0162373713507480.

Texas Education Agency. *Academic Excellence Indicator System*. 2020. URL: https://rptsvr1.tea.texas.gov/perfreport/aeis/index.html. Accessed on 2/12/2024.

Edward Wu and Johann A. Gagnon-Bartsch. *The LOOP Estimator: Adjusting for Covariates in Randomized Experiments*. Evaluation Review, 42(4):458–488, August 2018. URL: https://doi.org/10.1177/0193841X18808003.

Edward Wu and Johann A. Gagnon-Bartsch. *Design-Based Covariate Adjustments in Paired Experiments*. Journal of Educational and Behavioral Statistics, 46(1):109–132, February 2021. URL: https://doi.org/10.3102/1076998620941469.


Edward Wu, Adam C. Sales, Charlotte Z. Mann, and Johann A. Gagnon-Bartsch. *`dRCT`*,
December 2023. URL: https://github.com/manncz/dRCT.
