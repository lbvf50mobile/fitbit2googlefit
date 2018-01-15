### Convert FitBit data to a Google fit

I have a `*.csv` contained 3 columns `start time`, `end time`, `steps amount` and  I need to put this data into the *Google fit* service.

https://developers.google.com/fit/rest/

#### Stat from csv file
```
"Flie name csv/fitbit_data.csv"
"Read file:"
 17.547000   0.687000  18.234000 ( 18.284816)
"Get stat:"
  1.047000   0.000000   1.047000 (  1.045038)
"Select chnunks where we have queue not interapted by zero rows:"
  0.891000   0.000000   0.891000 (  0.894764)
"Total rows: 1009440"
"Zero rows: 921454, 91%"
"Steps rows: 87986, 8%"
"Amount of filled chunks: 32494"
```

Only 8% of rows have a step data;

