./ ~ - ~ - ~ - ~ - ~ - ~ - ~ - ~ - ~ - ~ - ~ - ~ - ~ - ~ - ~ - ~ - ~ - ~ - \.
|                                                                           |
|    Author:      Gianluca Bellocchi <gianluca.bellocchi@unimore.it>        |
|    Application: Artificial stimuli generator.                             |
|                                                                           |
.\ ~ - ~ - ~ - ~ - ~ - ~ - ~ - ~ - ~ - ~ - ~ - ~ - ~ - ~ - ~ - ~ - ~ - ~ - /.

This is a simple tool to generate 2D custom datasets.

1)  In 'arti_stim.py' you can act on the stimuli generator and specify whatever
    mathematical rule to generate your stimuli.

    Here you can also modify the stimuli properties (data_type, data_dim).


2)  In the makefile you can modify the dataset properties (WIDTH, HEIGHT).

3)  In the makefile, set 'PRJ_INC_DIR' to the location where you want the header 
    file to be collected.

3)  Run a 'make clean artificial_stimuli'.

4) A header file will be generated.

    