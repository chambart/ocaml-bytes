include module type of String

val empty : t
val of_string : string -> t
val to_string : t -> string
val sub_string : t -> int -> int -> string
external unsafe_to_string : t -> string = "%identity"
external unsafe_of_string : string -> t = "%identity"
val extend : t -> int -> int -> t
val blit_string : string -> int -> t -> int -> int -> unit
val cat : t -> t -> t
