include String

let sub_string = sub
let empty = ""
let of_string x = x
let to_string x = x
external unsafe_to_string : t -> string = "%identity"
external unsafe_of_string : string -> t = "%identity"
