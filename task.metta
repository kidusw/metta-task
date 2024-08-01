(: a Root)
(: b Node)
(: c Node)
(: d Node)
(: e Node)

(Parent a b)
(Parent b c)
(Parent b d)
(Parent a e)

#1
(= (max-depth $tree)
    (if (is-leaf $tree)
        1
        (+ 1 (max (map max-depth (children $tree))))))


//#2
(=(exists $y)
(if (==(get-type $y)Root)
(match &self (Parent $y $x) (present))
(if (==(get-type $y)Node)
(match &self (Parent $x $y) (present))
(Absent)
)
)
)

//#3

(= ($count-symbol $tree $symbol)
    (if (is-leaf $tree)
        (if (= tree symbol) 1 0)
        (sum (map (lambda (child) (count-symbol child symbol)) (children tree)))))

!(max-depth (a (b (c d))e))
!(exists a)