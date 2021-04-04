# DSP Assignment 1

This repository contains files, which were used for the first assignment of DSP course.

Firstly, build the image with ```docker build --tag dsp:assignment1 .```

Then, ```docker run -p 8888:8888 --rm dsp:assignment1```.

If you want to edit notebooks and save changes add ```-v``` flag, for example, 

```-v path/to/notebooks:/content/notebooks```

