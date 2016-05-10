include String

let sub_string = sub
let empty = ""
let of_string x = String.copy x
let to_string x = String.copy x
external unsafe_to_string : t -> string = "%identity"
external unsafe_of_string : string -> t = "%identity"
let extend s left right =
  let len = length s + left + right in
  let r = create len in
  let (srcoff, dstoff) = if left < 0 then -left, 0 else 0, left in
  let cpylen = min (length s - srcoff) (len - dstoff) in
  if cpylen > 0 then unsafe_blit s srcoff r dstoff cpylen;
  r
let blit_string = blit
let cat s1 s2 =
  let l1 = length s1 in
  let l2 = length s2 in
  let r = create (l1 + l2) in
  unsafe_blit s1 0 r 0 l1;
  unsafe_blit s2 0 r l1 l2;
  r
