---
layout: post
title:  "Numba & Julia from a User Perspective"
date:   2014-08-04 10:00:00
categories: Speed
---

So, this post is written basically for my own edification, and I thought it might be useful. Anyways, I thought it would be cool to test whether [Numba](http://numba.pydata.org/numba-doc/dev/examples.html) or [Julia](http://julialang.org/) performance was better. Julia's documention helpfully provides several functions that are used to test the speed of several common code patterns. I decided to re-write the micro-benchmarks using Numba to see how Julia/Python now compared, as those are the two langagues I feel are best suited/I am most comfertable with. I also compare the results to baseline python. 

### Test Information 

Each test was run on my Macbook Pro running Julia 0.3 and Anaconda Python2.7. The timing functions were the same that are used in the micro-benchmark implementations. 

### Implementation Information

Most of the implementations are based on the [micro-benchmarks](https://github.com/JuliaLang/julia/blob/master/test/perf/micro/perf.jl) provided by the Julia Core team. I may have missed minor preformance optimizations provided by both Numba and Julia, please either open a pull request or get in touch with me if you notice somehthing I could do better. Both results are an average of 5 runs. 

Note: while converting the micro-benchmarks, it was difficult to convert the standard python to numba-python, ie, I could not just add `@jit` and have my code run correctly. 

### Results
First of all, converting the python code to Numba was not just a matter of adding @jit, and this represents a significant barrier to usability. 
Error example: `NotImplementedError: offset=83 opcode=0x5e opname=LIST_APPEND` 
for the implementation of mandelbrot. 

function  | julia    | python-numba  | plain-python 
fib       | 0.069229 | 11.077880859  | 4.14800643921
parse_int | 0.216129 | 2.68006324768 | 2.75015830994
mandel    | 0.418519 |      *         | 5.92398643494
quicksort | 0.422881 |      *         | 24.7461795807
pi_sum    | 22.925340|      *        | 732.882022858
rand_mat_stat | 25.971044 |   *       | 187.264919281
rand_mat_mul | 95.173173  |    *      | 127.198934555




### So, What? & *Why*
This should make clear that the key advantage of Julia is what I'm calling Fast, by Default. As several other tests have shown it is possible to get Python to be faster than Julia, with even semi-trivial amounts of work. However, Julia works out-of-the-box (note the not implemented Numba stuff) and doesn't require choosing a speed option (Cython vs PyPy vs Numba vs oh god panic). Rather, even though both Numba and Julia represent LLVM frontends with relatively simple syntax, Julia becomes far more useful. 

### Future Work
* Full implementations of some numba stuff. 
* Charts!
* Talk about Python+Julia. 