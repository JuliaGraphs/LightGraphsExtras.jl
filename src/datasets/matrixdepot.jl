function MDGraph(a::AbstractString, x...)
    m = try
        matrixdepot((a | "**/" * a) & issymmetric, x...)
    catch ex
        map_exceptions(ex)
    end
    return Graph(m)
end

function MDDiGraph(a::AbstractString, x...)
    m = try
        matrixdepot((a | "**/" * a), x...)
    catch ex
        map_exceptions(ex)
    end
    return DiGraph(m)
end

function map_exceptions(ex::Exception)
    if ex isa MatrixDepot.DataError
        error("Valid matrix not found in collection")
    elseif ex isa MethodError
        error("Invalid matrix parameters specified")
    else
        rethrow(ex)
    end
end
