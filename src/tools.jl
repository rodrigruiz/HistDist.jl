"""
    significance(a,b,k)

Return the significance of the difference between two histograms.

The the result is the sum of the significances of each bin, and the significance of a bin is calculated following eq (5) from Li, T., & Ma, Y. 1983, ApJ, 272, 317.
This calculation assumes Poisson statistics in each bin. If a bin is empty for both histograms, the bin does not contribute to the result.

# Arguments
- `a::Vector{Number}`: Bin counts in the first histogram
- `b::Vector{Number}`: Bin counts in the second histogram
- `k::Number`: Normalisation parameter. It is interpreted as the integral of histogram a divided by the integral of histogram b.
"""
function significance(a,b,k)
    if length(a) != length(b)
        print("a and b have different lengths")
        return 0
    end
    s=0
    for i in 1:length(a)
        if a[i] + b[i] != 0
            s+= abs(a[i] - k*b[i])/sqrt(a[i]+k*k*b[i])
        end
    end
    return s
end
