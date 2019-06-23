# let rec sort = function
    | [] -> []
    | x :: l -> insert x (sort l)
  and insert elem = function
    | [] -> [elem]
    | x :: l -> if elem < x then elem :: x :: l
                else x :: insert elem l;;



/* database stuff */

# let my_host =
    let sh cmd = Shell.sh_one_exn cmd in
    let hostname   = sh "hostname" in
    let os_name    = sh "uname -s" in
    let cpu_arch   = sh "uname -p" in
    let os_release = sh "uname -r" in
    let timestamp  = Time.now () in




/* use of skip and take */
   # let take list =
	if list = []
	then []
	else List.hd list :: skip (List.tl list)
      ;;
    Unbound value skip
    # let skip list =
	if list = []
	then []
	else take (List.tl list)
      ;;
    Unbound value take




( + ) 3 4;;                             (* ⇒ 7 *)
( *. ) 23. 3.;;                         (* ⇒ 69. *)
( + ) ((+) 3 4) 5;;                       (* ⇒ 12 *)
( * ) ((+) 3 4) 5;;                       (* ⇒ 35 *)
