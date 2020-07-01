# HLStools

This repository uses a benchmark suite of 208 programs. These programs have been extracted from the AnghaBench suite[1], a publicly ([link](http://cuda.dcc.ufmg.br/angha/))  available collection of over one million C programs, mined from open-source repositories. These programs are not executable; however, they are compilable. In other words, any standard C compiler, e.g., GCC, LLVM or ICC, should be able to recognize each program as an independent compilation unit.

## Program Filtering

Although AnghaBench contains over one million compilable C programs, most of them are not suitable for this paper. Limitations stem from two observations. First, the vast majority of functions are too small to stress the capacity of industrial-quality HLS tools. Second, although compilable, most functions are not linkable. In this respect, the different HLS tools used in this paper handle complete programs, that is, compilation units in which every function has a body, be it user-defined, or available via libraries. Programs that refer to functions without bodies (albeit with fully compilable declarations) do not fit the needs of the study carried out in this paper. Therefore, to deal with the first shortcoming, we have singled out the 10,000 largest functions available in AnghaBench. To deal with the second, we have filtered programs that, in the context of this repository, are called leaf functions. Leaf functions are C procedures that do not invoke other procedures.

## Meaningful Compilation

In addition to these two filters, we further refine our benchmark collection to ensure that compilation would be meaningful. A "meaningful" compilation unit yields a non-empty Verilog output when submitted to at least one of the three tools considered in this repository. These tools apply several optimizations to the programs that they synthesize. In particular, functions that do not return values, nor modify global state will lead to empty code, and we have removed these functions. After this third sieve, we obtained a collection of 208 benchmarks, and each one of these C files contains a single function, which has a non-void return type.

## On the Size of the Benchmarks

In terms of the number of lines of uncommented, non-blank code (LoC), the shortest function has 31 lines, and the longest, 2,138. The average is 92.18 LoC, with a median of 118 LoC. To give the reader some perspective on these sizes, once we compile these programs to---unoptimized---x86 binary, we obtain object files whose sizes range from 2,296 to 60,056 bytes, with an average of 4,557.06 bytes and a median of 4,040 bytes.

## References

[1] A. Faustino, B. Kind, J. W. M. aes, J. Rocha, B. G. aes, and F. M. Q. ao Pereira, “Anghabench: a synthetic collection of benchmarks mined from open-source repositories,” Universidade Federal de Minas Gerais, Tech. Rep. 01-2020, 2020.

## Acknowledge

We would like LegUp, Xilinx, and Intel to support. 

## About us
  
  - [Josué Campos](https://www.linkedin.com/in/josuecampos-729a8216b/)
  - [Michael Canesche](https://canesche.github.io/)
  - [Dalila Maria Vieira](https://www.linkedin.com/in/maria-dalila-vieira/)
  - [Ricardo dos Santos Ferreira](http://www2.dpi.ufv.br/?page_id=546)
  - [Peter Jamieson](http://www.miamioh.edu/cec/academics/departments/ece/about/faculty-staff/jamieson-bio/index.html)
  - [José Augusto Nacif](https://www.linkedin.com/in/jose-augusto-nacif-b283738/)
  - [Fernando Magno Quintao Pereira](https://homepages.dcc.ufmg.br/~fernando/)
