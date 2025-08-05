Vectors p1, p2, k1, k2;
Indices mu, nu;
Symbols me, e;
Symbols s, u,t, [s - me^2], [u - me^2];

Local m1m1 = e^4 * 4^-1 * [s - me^2]^-2 *
           (( g_(1, p2) + me ) *
           ( g_(1, nu) ) *
           ( g_(1, p1) + g_(1, k1) + me ) *
           ( g_(1, mu) ) *
           ( g_(1, p1) + me ) *
           ( g_(1, mu) ) *
           ( g_(1, p1) + g_(1, k1) + me )*
           ( g_(1, nu) ));

Local m2m2 = e^4 * 4^-1 * [u - me^2]^-2 *
           (( g_(1, p2) + me ) *
           ( g_(1, mu) ) *
           ( g_(1, p1) - g_(1, k2) + me ) *
           ( g_(1, nu) ) *
           ( g_(1, p1) + me ) *
           ( g_(1, nu) ) *
           ( g_(1, p1) - g_(1, k2) + me )*
           ( g_(1, mu) ));

Local m1m2 = -e^4 * 4^-1 * [s - me^2]^-1 * [u - me^2]^-1 *
           (( g_(1, p2) + me ) *
           ( g_(1, nu) ) *
           ( g_(1, p1) + g_(1, k1) + me ) *
           ( g_(1, mu) ) *
           ( g_(1, p1) + me ) *
           ( g_(1, nu) ) *
           ( g_(1, p1) - g_(1, k2) + me )*
           ( g_(1, mu) ));

Local m2m1 = -e^4 * 4^-1 * [s - me^2]^-1 * [u - me^2]^-1 *
           (( g_(1, p2) + me ) *
           ( g_(1, mu) ) *
           ( g_(1, p1) - g_(1, k2) + me ) *
           ( g_(1, nu) ) *
           ( g_(1, p1) + me ) *
           ( g_(1, mu) ) *
           ( g_(1, p1) + g_(1, k1) + me )*
           ( g_(1, nu) ));    

Local m2 = m1m1 + m1m2 + m2m1 + m2m2;

Trace4, 1;

*To compare with feyncalc numerator
Multiply [s-me^2]^2*[u-me^2]^2*2^-1*e^-4;

id p1.p1 = me^2;
id p2.p2 = me^2;
id k1.k1 = 0;
id k2.k2 = 0;

id p2.k2 = p1.k1;
id p1.k1 = 2^-1 * (s - me^2);

id k1.k2 = -me^2 + p1.p2;
id p1.p2 = -2^-1* (t-2*me^2);

id p2.k1 = p1.k2;
id p1.k2 = -2^-1 * (u-me^2);

id [s - me^2] = (s - me^2);
id [u - me^2] = (u - me^2);

id t = 2*me^2 - s - u;
*id s = 2*me^2 - t - u;
Bracket e, me, [s - me^2], [u - me^2];
Print;

.end