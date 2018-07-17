# chemCal 0.2.1 (2018-07-17)

- 'inverse.predict': Do not work on the means of the calibration standards any more, as this ignores the variability of y values about the means. Thanks to Anna Burniol Figols for pointing out this issue

- Use testthat for tests to simplify development. Adapt the tests using data with replicate standard measurements to work on the means in order to show the relation to 'inverse.predict' from earlier versions. Include comparisons with investr::calibrate(method = 'Wald') for unweighted regressions. Include tests with more precision to check for changes in numerical output across versions.

- 'lod' and 'loq': In the lists that are returned, return the list component 'y' without names, because we always only have a single element in 'y' (previously the name '1' was returned).

- Convert vignette to html and explain the changes to 'inverse.predict'

- Add two example dataset, one from an online course at the University of Toronto, one from Rocke and Lorenzato (1995)

- Update static documentation

# chemCal 0.1-33 (2014-04-24)

- Bugfix in lod() and loq(): In the case of small absolute x values (e.g. on
	the order of 1e-4 and smaller), the lod or loq calculated using the default
	method could produce inaccurate results as the default tolerance that was
	used in the internal call to optimize is inappropriate in such cases. Now a
	reasonable default is used which can be overriden by the user. Thanks to
	Jérôme Ambroise for reporting the bug.

For a detailed list of changes to the chemCal source please consult the commit history on https://cgit.jrwb.de/chemCal
