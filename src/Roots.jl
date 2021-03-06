__precompile__(true)
module Roots


if VERSION >= v"0.7-"
    using Printf
else
    using Missings
end

using ForwardDiff
using Compat: @nospecialize, lastindex


export fzero,
       fzeros,
       newton, halley,  # deprecate these 4?
       secant_method, steffensen,
       D

export find_zero, find_zeros,
       Order0, Order1, Order2, Order5, Order8, Order16
export Bisection, FalsePosition

## load in files
include("adiff.jl")
include("utils.jl")
include("find_zero.jl")
include("bracketing.jl")
include("derivative_free.jl")
include("newton.jl")
include("fzero.jl")



end
