BEGIN {
    FS = "([ ]+x = )|(, z = )|(, y = )|(, ow = )|(, ox = )|(, cellid = )|( in range)|( object)|(\")"
    if ("" == planet)
        pn = "tatooine"
    else
        pn = planet
    if ("" == respawn)
        rt = 1
    else
        rt = respawn
    if ("" != mobile)
        mob = mobile
}
/^\[Spatial\][ [:digit:]:\t]+ x = / {
    format = "spawnMobile(\"%s\", \"%s\", %u, %4.3f, %4.3f, %4.3f, %4.3f, %u)\n";
    if ("" == mob)
        print "warning: no mobile template" > "/dev/stderr"
    if (0 != $7)
        if (0 != cid)
            printf format, pn, mob, rt, $2, $3, $4, get_heading($5), cid
        else
            print "warning: wrong indoor cellid" > "/dev/stderr"
    else
        printf format, pn, mob, rt, $2, $3, $4, get_heading($5), $7
    c++
}
/^\[Spatial\][[:alnum:]\[\]\-,: ]+\"cellid=/ {
    cid = substr($2, length("cellid=") + 1)
}
/^\[Spatial\][[:alnum:]\[\]\-,: ]+\"planet=/ {
    pn = substr($2, length("planet=") + 1)
}
/^\[Spatial\][[:alnum:]\[\]\-,: ]+\"mobile=/ {
    mob = substr($2, length("mobile=") + 1)
}
/^\[Spatial\][[:alnum:]\[\]\-,: ]+\"respawn=/ {
    rt = substr($2, length("respawn=") + 1)
}
/^\[Spatial\][[:alnum:]\[\]\-,: ]+\"[^((cellid=)|(planet=)|(mobile=)|(respawn=))]/ {
    printf "-- %s\n", $2
}
END {
    print "\ninfo: " c " mobiles spawned" > "/dev/stderr"
}

function acosd(x)
{
    return (atan2((1. - x ^ 2) ^ 0.5, x) * 180.) / atan2(0, -1)
}

function get_heading(ow)
{
    d = 2 * acosd(ow)
    if (d <= 180)
        return 2 * acosd(ow)
    return d - 360
}
