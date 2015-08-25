signature HO_MATCH =
sig
  type t
  type var

  structure Solution : DICT where type key = var
  type solution = t Solution.dict

  type problem = {pattern : t, term : t}
  exception Mismatch of t * t

  val match : problem -> solution
end
