include String

let sub_string = sub
let empty = ""
let of_string x = String.copy x
let to_string x = String.copy x
external unsafe_to_string : t -> string = "%identity"
external unsafe_of_string : string -> t = "%identity"
