# Lung-Cancer-Data-Analysis

Dataset Description:

North Central Cancer Treatment Group (NCCTG) Lung Cancer Data

According to World Health Organization, Cancers figure among the leading causes of morbidity and mortality worldwide, with approximately 14 million new cases and 8.2 million cancer related deaths in 2012. The number of new cases is expected to rise by about 70% over the next 2 decades. Among men, the 5 most common sites of cancer diagnosed in 2012 were lung, prostate, colorectal, stomach, and liver cancer. Among women the 5 most common sites diagnosed were breast, colorectal, lung, cervix, and stomach cancer. And the common type of cancer prevalent amongst both the sexes is lung cancer. Lung cancer is the leading cause of cancer death and the second most common cancer among both men and women in the United States. The data set North Central Cancer Treatment Group (NCCTG) Lung Cancer Data describes survival in patients with advanced lung cancer from the North Central Cancer Treatment Group. Performance scores rate how well the patient can perform usual daily activities. Size of the unstructured database is 229 Instances and 10 Variables.
For measuring how the patient can perform usual daily activities, we use Karnofsky Performance Scale Index and ECOG performance score. The Karnofsky Performance Scale Index allows patients to be classified as to their functional impairment. This can be used to compare effectiveness of different therapies and to assess the prognosis in individual patients. The lower the Karnofsky score, the worse the survival for most serious illnesses. The ECOG performance status is a scale used to assess how a patient's disease is progressing, assess how the disease affects the daily living abilities of the patient, and determine appropriate treatment and prognosis. 
Grade 0:  Fully active, able to carry on all pre-disease performance without restriction
Grade 1: Restricted in physically strenuous activity but ambulatory and able to carry out work of a light or sedentary nature, e.g., light house work, office work
Grade 2: Ambulatory and capable of all selfcare but unable to carry out any work activities. Up and about more than 50% of waking hours
Grade 3: Capable of only limited selfcare, confined to bed or chair more than 50% of waking hours
Grade 4: Completely disabled. Cannot carry on any selfcare. Totally confined to bed or chair
Grade 5: Dead

Metadata:

URL: https://vincentarelbundock.github.io/Rdatasets/csv/survival/cancer.csv
Source: North Central Cancer Treatment Group. Journal of Clinical Oncology. 12(3):601-7, 1994.
Category: Healthcare 
Demographic Indicator: Censoring status, Age, Sex, ECOG performance score, Karnofsky performance score as rated by physician, Karnofsky performance score as rated by the patient, Meal Calories and Weight Loss
Year: 1994
Dataset Variables

The variables given below are the prospective evaluations of prognostic variables from the patient-completed questionnaires in 1994 by the North Central Cancer Treatment Group.
Number of Variables: 10
Number of Instances: 229

ID	Variable	Variable Description	                  Data Type
1	  Inst	    Institution code (1-33, includes NA)	  Character
2	  Time	    Survival time in days	                  Integer
3	  Status	  Censoring status 1=censored, 2=dead	    Integer
4	  Age	      Age of the patient in years	            Integer
5	  Sex	      Sex of the patient. Male=1 Female=2	    Integer
6	  ph.ecog	  Eastern Cooperative Oncology Group 
              (ECOG) performance score (0=good 5=dead) Integer
7	  ph.karno	 Karnofsky performance score (bad=0 
               and good=100) 
               rated by physician.                   	Character
8	  pat.karno	 Karnofsky performance score 
               as rated by the patient.	              Character
9	  meal.cal	Calories that the patient 
              consumed at meals	                      Character
10	wt.loss	  Weight loss in the last six months	    Character

Data is missing or left incomplete by the patient when they had completed the questionnaires. The variables Institution code, ECOG performance score, Karnofsky performance score as rated by physician, Karnofsky performance score as rated by the patient, Meal Calories and Weight Loss have some of the values as “NA” which needs to be cleaned and marked as “0” to make it consistent.

Business Questions:
The following project will attempt to answer the following questions:

1.	What age group is more affected by lung cancer?
2.	What is the weight loss pattern in lung cancer patient based on meals consumed and survival time left?
3.	What is the frequency of the censoring status based on the gender?
4.	What is the probability of a lung cancer patient’s survival rate based on his age, Karnofsky Performance Scale Index as rated by physician and by patient?
5.	What is meal calorie consumption trend amongst the age groups?
6.	What is the probability of a lung cancer patient’s survival rate based on his ECOG performance score?
7.	What is the probability of a lung cancer patient’s weight loss?
8.	What is co-relation of Censoring status of a lung cancer patient and his Karnofsky Performance Scale Index as rated by physician?
9.	Do men have greater Karnofsky Performance Scale Index?

Data Cleaning:

In the dataset “Cancer”, the below data needs to be cleaned:

1.	The first variable should be removed from the dataset since it does not contain any useful information.
2.	Variables names need to be renamed to make them more understandable.
3.	The values in the variable “Sex” should be transformed into more user-friendly values such as “Male” instead of 1 and “Female” instead of 2.
4.	The values in the variable “Status” should be modified to censoring status values such as “Censored” instead of 1 and “Dead” instead of 2.
	


