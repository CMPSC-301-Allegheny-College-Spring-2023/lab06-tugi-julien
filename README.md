# Data Analytics (CS301) Lab 6 Assignment

## The Statistical Analysis of Economic Data With an Emphasis on Gender Roles in International Business Development

**Assigned** : Monday 3rd April 2023

**Due** : Monday 10 March 2023

<center>
&#x200B;
<img src="graphics/women.png" alt="logo" style="width:200px;"/>
</center>

## Objectives
To explore statistical tools which are relevant for the evaluation of economic data. At this point in the class, there has already been much exposure to using many different types of statistical tools to handle different formats of data. It is therefore expected that the student will able to research code development and will be able to resolve data formatting issues during while working in the analysis of data. In particular, these skills comprise the ability to research R-statistics software packages for the application to the particular contexts for which they were designed and to extract knowledge from the produced visualizations and extracted interpretation of results. Furthermore, the student will be able to explain credible results and conclusions which are to be entirely supported by the methods and data.

## Reading Assignment

In the article by Heathcote _et al_. [1], female labor supply is discussed for its impact on the United States economy between the years of 1967 to 2002. The authors produce a model which was designed to help study and measure the below factors which are associated to women in the workforce.
Note: this article has been included in the `reading/` directory.

## Group Work

If you would like to work in Groups then please do! Please keep groups up to __two__ (__2__) members. 

## The Article’s Themed Questions

It is often likely that the original data from an article is unavailable for public use, or that only a subset of the data has been made available. In this event, we turn to other available data sets in order to study the same types of research questions and themes of the article. Furthermore, using our own data, we are often able to test (and validate) some of the same theories as those of articles which decide not to release their original data sets to the public.

Our data set for this lab originates from the World Bank’s Online Data Base [2] and may be conveniently obtained from [The World Bank](https://datacatalog.worldbank.org/search/dataset/0037654/Gender-Statistics). This data concerns the lifestyles, living conditions and economic contributions made by women on the world’s stage between the years of 1960 to 2017. 

__In this lab, you are to use this data to gather direct or indirect proof (using proxies) to either support or refute the claims made by the four themed questions (listed above in Reading) of the study by Heathcote _et al_.__

 For this work, you are to become acquainted with this article and to understand the authors’ position on their conclusions. Each of the four themes of Heathcote _et al_., shown below, determine the necessary variables from the data set (available from the above link to World Bank’s Online Data Base) which could be used to address the claims of the article for women (of any two countries of your choosing). Remember, the exact research questions from the article may not be directly answerable by simply running tests over the World Bank data set You will have to develop a strategy in which you will combine several different variables which correlate in some logical (and reasonable) way to be used with linear models (single or multiple). Armed with this analysis from your data, you may proceed to argue your points of view, with regard to those written in blue (below) from the article.

# Part 1 : Questions to Address

Use the below research questions to guide your own analysis for your chosen data of any two countries. Please note that the quality of data may be inadequate some countries, or that there may be missing parts that could interfere with your work. Be sure to check before proceeding any further.

  1. The decline in marriage rates

  2. The narrowing gender wage gap

  3. The preference (or cultural) shift towards market work

  4. The change in the bargaining power of women within the household

## Create a Strategy and an Argument

You will have to be creative as you approach each theme using variables from your data set. For instance, the first theme of the article’s study is to investigate whether there is a decline of marriage rates in populations of women. This implies that fewer women are either married or are getting married for some unknown reason (an unknown mechanism). In your analysis, you will have to choose variables which could indicate a mechanism leading to a possible decline in marriage. Finding such evidence in your data will enable you to agree with the conclusions of Heathcote _et al_., even though your data set was completely different. If you are able to refute the article’s claims, then this is also an excellent result.

Perhaps a good place to start this analysis in the study of marriage decline would be to choose all necessary variables that may contribute to the argument of a woman’s general loss of interest in marriage. 

In this case, evidence could include the following.

  * The declining numbers of married women between 1960’s to present,
  * The rising numbers of financially autonomous women in society, the populations of women
  *ho own their own houses and lands,
  * The number of women who have invested in their own businesses.
  * The number of women who work professionally
  * The counts of women who deny their husbands the authority to beat them.
• And other statistics which may be used to argue against a woman’s interest in marriage

## At Least Two Countries

All of these mentioned variables, when used together in a multi-linear regression model (where you choose relevant dependent variables) could be used to argue for the support or to refute a conclusion made by the article. Remember to chose data for at least _two_ countries to confirm or refute the conclusions since agreement across multiple countries will support your argument.

It is very likely that the conclusions of the article are not generally true all over the world which implies that there is a country for which the conclusions is completely incorrect. Finding a country where a conclusion is correct and, another country where the conclusion is incorrect is an interesting result that you are invited to discuss in your report document of your final deliverables, shown below.

# Part 2: Present your Results

__Next lab:__On the day that this lab is due (see top of this document), each group will give a five to seven minute presentation where the results / highlights of their work will be discussed. 

## Important Details

  * For the sake gaining skills in analysis, we will consider all data to be of a _binary_ nature, and not of a _non-binary_ composition. This assumption follows from the design of the original project that gathered the data for Gender Statistics for The World Bank.

  * Please remember to include your name on everything you submit for the class. If there are no included names of the members of the group, then the instructor will be unable to award credit for your work. 

  * Please submit source code that can be run as-is by the instructor during grading. All relevant code is to be un-commented, while all non-code areas in your source code are to be commented so as not to interfere with execution.

## References

  1. Jonathan Heathcote, Kjetil Storesletten, and Giovanni L Violante. The macroeconomics of the quiet revolution: Understanding the implications of the rise in womens participation for economic growth and inequality. Re- search in Economics, 2017.

  + [Publisher](https://www.sciencedirect.com/science/article/pii/S1090944317300443?casa_token=LZykq-dMWKUAAAAA:QS1xaqT0CUDoMVY5IrSNEA4zeSXj4D1sZrt9FEWeZVpSB3h35CflqffPuQPYbLHcEQJSK9Y1lA)

  2. The World Bank. Gender statistics., February 2023. This dataset is licensed under Creative Commons Attribution 4.0.
  + [Data download page](https://datacatalog.worldbank.org/search/dataset/0037654/Gender-Statistics)
  + [Online tool](https://databank.worldbank.org/reports.aspx?source=gender-statistics)
---

### Required Deliverables

* A complete and executable source code in File, `src/code.r`. Your instructor should be able to run the file without additional editing.

* Complete the `reflections.md` text file with your responses to the questions from the Parts described above.

### Checks for GatorGrader

For immediate feedback on submissions, we will be using Gator Grade to inform the of missing components in the submission. As you submit, you will notice that there is a thick red X that will change to a green check mark when all components have been included in the submission. You are encouraged to click on the red X to find a listing of the components to address.

## Project Assessment

The grade that a student receives on this assignment will have the following components.

- **GitHub Actions CI Build Status [up to 10%]:**: For the lab01 repository associated with this assignment students will receive a checkmark grade if their last before-the-deadline build passes. This is only checking some baseline writing and commit requirements as well as correct running of the program. An additional reduction will given if the commit log shows a cluster of commits at the end clearly used just to pass this requirement. An addition reduction will also be given if there is no commit during lab work times. All other requirements are evaluated manually.

- **Mastery of Technical Writing [up to 60%]:**: Students will also receive a checkmark grade when the responses to the writing questions presented in the `reflection.md` reveal a proficiency of both writing skills and technical knowledge. To receive a checkmark grade, the submitted writing should have correct spelling, grammar, and punctuation in addition to following the rules of Markdown and providing conceptually and technically accurate answers.

- **Presentation [up to 30%]:**
Students will receive a checkmark grade for presentations. Student must be present to receive credit for presentation.

## GatorGrade

You can check the baseline writing and commit requirements for this lab assignment by running department's assignment checking `gatorgrade` tool. To use `gatorgrade`, you first need to make sure you have Python3 installed (type `python --version` to check). If you do not have Python installed, please see:

- [Setting Up Python on Windows](https://realpython.com/lessons/python-windows-setup/)
- [Python 3 Installation and Setup Guide](https://realpython.com/installing-python/)
- [How to Install Python 3 and Set Up a Local Programming Environment on Windows 10](https://www.digitalocean.com/community/tutorials/how-to-install-python-3-and-set-up-a-local-programming-environment-on-windows-10)

Then, if you have not done so already, you need to install `gatorgrade`:

- First, [install `pipx`](https://pypa.github.io/pipx/installation/)
- Then, install `gatorgrade` with `pipx install gatorgrade`

Finally, you can run `gatorgrade`:

`gatorgrade --config config/gatorgrade.yml`

## Submitting Your Work

Use GitHub to submit your work. The commands are the following.

```
git add -A
git commit -m "add meaningful commit message"
git push
```

## Seeking Assistance

* Extra resources for using markdown include;
  + [Markdown Tidbits](https://www.youtube.com/watch?v=cdJEUAy5IyA)
  + [Markdown Cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)
* Do not forget to use the above git commands to push your work to the cloud for the instructor to grade your assignment. You can go to your GitHub repository using your browser to verify that your files have been submitted. Please see the TL’s or the instructor if you have any questions about assignment submission.

Students who have questions about this project outside of the lab time are invited to ask them in the course's Discord channel or during instructor's or TL's office hours.
