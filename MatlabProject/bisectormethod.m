function [ak, bk]=bisectormethod(f,a1,b1,e,l)
 syms x
 g=symvar(f);
 f=subs(f,g,x);
 a(1)=a1;
 b(1)=b1;
 k=1;
 while abs(b(k)-a(k))>=l
     x1=(a(k)+b(k))/2-e;
     f1=subs(f,x,x1); %f(x1)
     x2=(a(k)+b(k))/2+e;
     f2=subs(f,x,x2); %f(x2)
     if f1>f2
         a(k+1)=x1;
         b(k+1)=b(k);
     elseif f2>f1
         b(k+1)=x2;
         a(k+1)=a(k);
     else
         a(k+1)=x1+e;
         b(k+1)=b(k);
     end
     k=k+1;
 end
 ak=a;
 bk=b;
end

  