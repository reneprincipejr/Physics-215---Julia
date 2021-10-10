
function plotMandelbrot( xrange::Tuple{Float64,Float64}, yrange::Tuple{Float64,Float64}; n=100 )
    M = rand(n,n);
    xval = range(xrange[1],xrange[2]; length=n );
    yval = range(yrange[1],yrange[2]; length=n );
    for i in 1:n, j in 1:n
        M[i,j] = mandelbrot( xval[i] + im*yval[j] )
    end
    heatmap( M, c=:thermal
        ,aspect_ratio=1.0
        ,xaxis=nothing
        ,yaxis=nothing
    )
end
#
plotMandelbrot( vrange::Tuple{Float64,Float64}; n=100 ) = plotMandelbrot( vrange, vrange; n )
