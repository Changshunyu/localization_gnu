
/*
 * This file was automatically generated using swig_doc.py.
 *
 * Any changes to it will be lost next time it is regenerated.
 */




%feature("docstring") gr::blocks::complex_to_arg "complex in, arg (arctan) out (float)

Constructor Specific Documentation:

Build a complex to arg block.

Args:
    vlen : vector len (default 1)"

%feature("docstring") gr::blocks::complex_to_arg::make "complex in, arg (arctan) out (float)

Constructor Specific Documentation:

Build a complex to arg block.

Args:
    vlen : vector len (default 1)"

%feature("docstring") gr::blocks::complex_to_mag_squared "complex in, magnitude squared out (float)

Calculates the magnitude squared of the complex samples:


Or: 
The input stream can be a vector of length , and for each vector, each item is converted using the above function. So above, m is from 0 to noutput_items*vlen for each call to work.

Constructor Specific Documentation:

Build a complex to magnitude squared block.

Args:
    vlen : vector len (default 1)"

%feature("docstring") gr::blocks::complex_to_mag_squared::make "complex in, magnitude squared out (float)

Calculates the magnitude squared of the complex samples:


Or: 
The input stream can be a vector of length , and for each vector, each item is converted using the above function. So above, m is from 0 to noutput_items*vlen for each call to work.

Constructor Specific Documentation:

Build a complex to magnitude squared block.

Args:
    vlen : vector len (default 1)"

%feature("docstring") gr::blocks::conjugate_cc "output = complex conjugate of input

Constructor Specific Documentation:

"

%feature("docstring") gr::blocks::conjugate_cc::make "output = complex conjugate of input

Constructor Specific Documentation:

"

%feature("docstring") gr::blocks::delay "delay the input by a certain number of samples

Positive delays insert zero items at the beginning of the stream. Negative delays discard items from the stream.

You cannot initialize this block with a negative delay, however. That leads to a causality issue with the buffers when they are initialized. If you need to negetively delay one path, then put the positive delay on the other path instead.

Constructor Specific Documentation:

Make a delay block.

Args:
    itemsize : size of the data items.
    delay : number of samples to delay stream (>= 0)."



%feature("docstring") gr::blocks::delay::set_dly "Reset the delay."

%feature("docstring") gr::blocks::delay::make "delay the input by a certain number of samples

Positive delays insert zero items at the beginning of the stream. Negative delays discard items from the stream.

You cannot initialize this block with a negative delay, however. That leads to a causality issue with the buffers when they are initialized. If you need to negetively delay one path, then put the positive delay on the other path instead.

Constructor Specific Documentation:

Make a delay block.

Args:
    itemsize : size of the data items.
    delay : number of samples to delay stream (>= 0)."

%feature("docstring") gr::blocks::divide "output = input[0] / input[1] / ... / input[M-1]

Divide across all input streams.

Constructor Specific Documentation:



Args:
    vlen : "

%feature("docstring") gr::blocks::divide::make "output = input[0] / input[1] / ... / input[M-1]

Divide across all input streams.

Constructor Specific Documentation:



Args:
    vlen : "

%feature("docstring") gr::filter::fir_filter_blk "FIR filter with IN_T input, OUT_T output, and TAP_T taps.

The fir_filter_blk_XXX blocks create finite impulse response (FIR) filters that perform the convolution in the time domain:



The taps are a C++ vector (or Python list) of values of the type specified by the third letter in the block's suffix. For this block, the value is of type TAP_T. Taps can be created using the firdes or optfir tools.

These versions of the filter can also act as down-samplers (or decimators) by specifying an integer value for .

Constructor Specific Documentation:

FIR filter with IN_T input, OUT_T output, and TAP_T taps.

Args:
    decimation : set the integer decimation rate
    taps : a vector/list of taps of type TAP_T"





%feature("docstring") gr::filter::fir_filter_blk::make "FIR filter with IN_T input, OUT_T output, and TAP_T taps.

The fir_filter_blk_XXX blocks create finite impulse response (FIR) filters that perform the convolution in the time domain:



The taps are a C++ vector (or Python list) of values of the type specified by the third letter in the block's suffix. For this block, the value is of type TAP_T. Taps can be created using the firdes or optfir tools.

These versions of the filter can also act as down-samplers (or decimators) by specifying an integer value for .

Constructor Specific Documentation:

FIR filter with IN_T input, OUT_T output, and TAP_T taps.

Args:
    decimation : set the integer decimation rate
    taps : a vector/list of taps of type TAP_T"

%feature("docstring") gr::blocks::multiply "output = prod (input_0, input_1, ...)

Multiply across all input streams.

Constructor Specific Documentation:



Args:
    vlen : "

%feature("docstring") gr::blocks::multiply::make "output = prod (input_0, input_1, ...)

Multiply across all input streams.

Constructor Specific Documentation:



Args:
    vlen : "

%feature("docstring") gr::customModule::ofdm_sync_shunyu "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of customModule::ofdm_sync_shunyu.

To avoid accidental use of raw pointers, customModule::ofdm_sync_shunyu's constructor is in a private implementation class. customModule::ofdm_sync_shunyu::make is the public interface for creating new instances.

Args:
    fft_len : 
    cp_len : 
    use_even_carriers : 
    threshold : "

%feature("docstring") gr::customModule::ofdm_sync_shunyu::make "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of customModule::ofdm_sync_shunyu.

To avoid accidental use of raw pointers, customModule::ofdm_sync_shunyu's constructor is in a private implementation class. customModule::ofdm_sync_shunyu::make is the public interface for creating new instances.

Args:
    fft_len : 
    cp_len : 
    use_even_carriers : 
    threshold : "

%feature("docstring") gr::blocks::plateau_detector_fb "Detects a plateau and marks the middle.

Detect a plateau of a-priori known height. Input is a stream of floats, the output is a stream of bytes. Whenever a plateau is detected, the middle of that plateau is marked with a '1' on the output stream (all other samples are left at zero).

You can use this in a Schmidl & Cox synchronisation algorithm to interpret the output of the normalized correlator. Just pass the length of the cyclic prefix (in samples) as the max_len parameter).

Unlike the peak detectors, you must the now the absolute height of the plateau. Whenever the amplitude exceeds the given threshold, it starts assuming the presence of a plateau.

An implicit hysteresis is provided by the fact that after detecting one plateau, it waits at least max_len samples before the next plateau can be detected.

Constructor Specific Documentation:



Args:
    max_len : Maximum length of the plateau
    threshold : Anything above this value is considered a plateau"





%feature("docstring") gr::blocks::plateau_detector_fb::make "Detects a plateau and marks the middle.

Detect a plateau of a-priori known height. Input is a stream of floats, the output is a stream of bytes. Whenever a plateau is detected, the middle of that plateau is marked with a '1' on the output stream (all other samples are left at zero).

You can use this in a Schmidl & Cox synchronisation algorithm to interpret the output of the normalized correlator. Just pass the length of the cyclic prefix (in samples) as the max_len parameter).

Unlike the peak detectors, you must the now the absolute height of the plateau. Whenever the amplitude exceeds the given threshold, it starts assuming the presence of a plateau.

An implicit hysteresis is provided by the fact that after detecting one plateau, it waits at least max_len samples before the next plateau can be detected.

Constructor Specific Documentation:



Args:
    max_len : Maximum length of the plateau
    threshold : Anything above this value is considered a plateau"

%feature("docstring") gr::blocks::sample_and_hold "sample and hold circuit

Samples the data stream (input stream 0) and holds the value if the control signal is 1 (input stream 1).

Constructor Specific Documentation:

"

%feature("docstring") gr::blocks::sample_and_hold::make "sample and hold circuit

Samples the data stream (input stream 0) and holds the value if the control signal is 1 (input stream 1).

Constructor Specific Documentation:

"



















