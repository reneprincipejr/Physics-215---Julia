
"""
    mandelbrot( c )

Computes the number of evaluations of the following equation before the resulting complex number 'z' beginning with 'z=c'.
- Input: 'c::Number'
- Output: 'itrMax::??'

### Questions
- What do you think is the output type of this function?
- WHich of the part of the code determines the type?

Sometimes forcing the type of output can be an advantage.
"""
function mandelbrot( c )
    z = c
    itrMax = 80
    for n in 1:itrMax
        if abs(z)>2
            return n-1
        end
        z = z^2 + c
    end
    return itrMax
end
