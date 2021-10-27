########################################################
## Gianluca Bellocchi <gianluca.bellocchi@unimore.it> ##
########################################################

#!/usr/bin/env python3

# HWPE attributes
class hwpe_specs:
    def __init__(self):

        # Engineer(-s)
        self.author             = 'Gianluca Bellocchi'
        self.email              = '<gianluca.bellocchi@unimore.it>'

        # Environment
        self.dest_dir           = 'output'

        # Generic
        self.hwpe_target        = 'MAC'
        self.design_type        = 'hls'

        # HWPE streaming interfaces [ name , data-type , reg-dim ]
        self.list_sink_stream   = [ [ 'x1_V' , 'int32_t' , 32 ] , [ 'x2_V' , 'int32_t' , 32 ] ]
        self.list_source_stream = [ [ 'y_mul_V' , 'int32_t' , 32 ] , [ 'y_mac_V' , 'int32_t' , 32 ] ]
        self.n_sink             = len(self.list_sink_stream)
        self.n_source           = len(self.list_source_stream)

        # HWPE standard regfiles
        self.std_reg_num        = 5       

        # HWPE custom regfiles [ name , data-type , reg-dim , isport ]
        self.custom_reg         = [ [ 'mac_par_V' , 'int32_t' , 32 , 1 ] ]
        self.custom_reg_num     = len(self.custom_reg)

        # FSM
        self.fsm_trans_size     = [ ['len', 'x1_V'] , ['len', 'x2_V'] , ['len', 'y_mul_V'] , ['len', 'y_mac_V'] ]

        # RISC-V firmware stimuli 
        self.input_stimuli      = [ 'stim_x1' , 'stim_x2' ]
        self.output_result      = [ 'res_mul' , 'res_mac' ]
        # self.custom_reg_values  = []

