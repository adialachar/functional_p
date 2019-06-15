


let rec averageList L = 
        match L with
        | [] -> 0
        | h::t -> 
                        let rec sumList lizt = 
                                match lizt with
                                | [] -> 0
                                | h::t -> h +. sumList t

                        in
                        sumList L /. length L ;; 
