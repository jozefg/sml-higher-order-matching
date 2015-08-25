functor HOMatch(A : ABT) =
struct
  structure A = AbtUtil(A)
  open A
  infix $ \ $$

  type t = A.t
  type var = Variable.t

  structure Solution = SplayDict(structure Key = Variable)
  type solution = t Solution.dict

  exception Mismatch of t * t
  type problem = {pattern : t, term : t}

  fun match {pattern, term} = raise Fail ""
end
