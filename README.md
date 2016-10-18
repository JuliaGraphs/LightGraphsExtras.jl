# LightGraphsExtras

[![Build Status](https://travis-ci.org/JuliaGraphs/LightGraphsExtras.jl.svg?branch=master)](https://travis-ci.org/JuliaGraphs/LightGraphsExtras.jl)
[![codecov](https://codecov.io/gh/JuliaGraphs/LightGraphsExtras.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/JuliaGraphs/LightGraphsExtras.jl)
[![Documentation Status](https://readthedocs.org/projects/lightgraphsextrasjl/badge/?version=latest)](http://lightgraphsextrasjl.readthedocs.io/en/latest/?badge=latest)
[![Join the chat at https://gitter.im/JuliaGraphs/LightGraphs.jl](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/JuliaGraphs/LightGraphs.jl)

Extra functionality for [LightGraphs](https://github.com/JuliaGraphs/LightGraphs.jl). Includes the following
algorithms:
- Matching
- Community Detection
- Network Interdiction
- Integration with [MatrixDepot.jl](https://github.com/weijianzhang/MatrixDepot.jl)


## Installation
```julia
Pkg.add("LightGraphsExtras")
```

Some of the functions require a JuMP solver installed (e.g., `Pkg.add("Clp")`).

## Documentation
Documentation for this module is available at [Read The Docs](http://lightgraphsextrasjl.readthedocs.io/en/latest/?badge=latest).
