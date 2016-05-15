# Swift LispKit


## Overview

_LispKit_ is a _Mac OS X_ framework for building Lisp-based extension and scripting languages
for Mac applications. _LispKit_ is fully implemented in the programming language
[Swift](http://www.swift.org). _LispKit_ implements a core language based on the
[R5RS Scheme standard](http://www.schemers.org/Documents/Standards/R5RS/HTML/). It supports
almost the full numerical tower consisting of arbitrary size integers, rationals, real numbers,
and complex numbers. _LispKit_ implements hygienic macros in terms of the _syntax-rules_ standard.
While _LispKit_ supports almost all standard functions and special forms of R5RS, it has two
major limitations: 1) lists are immutable, and 2) there is only limited support for continuations.
In particular, there is currently no support for `call/cc`.

From an architectural perspective, _LispKit_ consists of:

  1. a compiler translating _LispKit_ expressions into bytecode, and
  2. a virtual machine for interpreting the generated byteocde. The virtual machine is
     stack-based, handles tail calls, and provides a garbage collector.


## Current state

As of May 2016, _LispKit_ is incomplete and work in progress. _LispKit_ relies on
[NumberKit](http://github.com/objecthub/swift-numberkit) for its support of numeric datatypes
like rationals, complex numbers, and big integers. The _LispKit_ compiler does not perform
any code optimizations and the performance of the system is significantly below state
of the art Scheme implementations.

The read-eval-print loop is a command-line tool that can be used to try out the framework.
It parses the entered _LispKit_ expression, compiles it to bytecode, executes it, and
displays the result.


## Requirements

- XCode 7.3
- Swift 2.2
- [NumberKit](http://github.com/objecthub/swift-numberkit)
