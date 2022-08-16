function significance(a,b)
    if length(a) != length(b)
        print("a and b have different lengths")
        return 0
    end
    s=0
    for i in 1:length(a)
        if a[i] + b[i] != 0
            s+= abs(a[i] - b[i])/sqrt(a[i]+b[i])
        end
    end
    return s
end
