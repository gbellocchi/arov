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
        self.hwpe_target        = 'FIR'
        self.design_type        = 'hls'

        # Kernel design [ is_ap_ctrl , is_dflow ]
        self.intf_kernel        = [ 0 , 1 ]

        # HWPE streaming interfaces [ name , data-type , reg-dim ]
        self.list_sink_stream   = [ [ 'x_V' , 'int32_t' , 32 ] ]
        self.list_source_stream = [ [ 'y_V' , 'int32_t' , 32 ] ]
        self.n_sink             = len(self.list_sink_stream)
        self.n_source           = len(self.list_source_stream)

        # HWPE standard regfiles
        self.std_reg_num        = 5       

        # HWPE custom regfiles [ name , data-type , reg-dim , is_port ]
        self.custom_reg         = [ [ 'coeff0_V' , 'uint32_t' , 32 , 1 ] , 
                                    [ 'coeff1_V' , 'uint32_t' , 32 , 1 ] ,
                                    [ 'coeff2_V' , 'uint32_t' , 32 , 1 ] , 
                                    [ 'coeff3_V' , 'uint32_t' , 32 , 1 ] ]
        self.custom_reg_num     = len(self.custom_reg)

        # FSM
        self.fsm_trans_size     = [ ['len', 'x_V'] , ['len', 'y_V'] ]

        # RISC-V firmware stimuli 
        self.input_stimuli      = [ 'stim_input' ]
        self.output_result      = [ 'res_fir' ]
        # self.custom_reg_values  = []

