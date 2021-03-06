#=
  Fixed Point Convergence
  Fixed Point Existance
  Fixed Point Uniqueness
  Newtons Method
  Bisection Method
=#

function testConvergence(f,p0,TOL,N0)
  # takes starting point, tolerance, maximum iterations
  i = 1
  while i <= N0
    p = g(p0)
    if abs(p-p0) < TOL
      return true
    else
      i += 1
      p0 = p
    end
  end
  return false
  println("Failure: N0 tries")


function testExistance(f,a,b)
  # interval [a,b]
  if f(a) * f(b) <0
    return true
    #does this make asusmptions
  else
    return false
  end


function testUniqueness(f,a,b)
  # interval [a,b]
  if derivative(f,a) * derivative(f,b) < 0
    return true
    #does this make assumptions
  else
    return false
  end
  

function newtonsMethod(f,p0,TOL,N0)
  if testConvergence(f) == true
    i = 1
    while i <= N0
        p = p0 - (derivative(f,p0) / f(p0)
        if abs(p-p0) < TOL
          return p
        else
          i += 1
          p0 = p
        end
    end
  else
    #return eror e
  end


function secantMethod()


function bisectionMethod(f,a,b,DOA,NO)
  # interval [a,b], DOA degree of accuracy
  if testConvergence(f) == true
    i = 1
    while i <= N0
      m = (1/2)(a + b)
      if f(m) = 0 | abs(f(m)) < DOA
        return m
      elseif f(m) * f(a) < 0
        a = m
      elseif f(m) * f(b) < 0
        b = m
      else
        #return eror e
      end
    end
    return m
  else
    #return error e
  end
  
        
      
      
      
        
      
      

