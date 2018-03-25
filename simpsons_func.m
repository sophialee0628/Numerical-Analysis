function I =simpsons_func(a,b,m,f)
h = (b-a)/(2*m);
xi=(a:h:b);
fi=f(xi);
n=length(xi);

s0 =fi(1)+ fi(n);
s1 = 0;
for i =2:2:n-2
    s1=s1+fi(i);
end 
s2=0;
for i=3:2:n-3
    s2=s2+fi(i)
end

I= (h/3.0)*(s0+4*s1+2*s2);

