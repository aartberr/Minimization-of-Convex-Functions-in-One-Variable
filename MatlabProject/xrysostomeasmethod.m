function [ak, bk]=xrysostomeasmethod(f,a1,b1,l) 
 syms x
 g=symvar(f);
 f=subs(f,g,x);
 gamma=0.618;
 x1=a1+(1-gamma)*(b1-a1);
 x2=a1+gamma*(b1-a1);
 k=1;
 a(1)=a1;
 b(1)=b1;
 while abs(b(k)-a(k))>=l
     f1=subs(f,x,x1); %f(x1)
     f2=subs(f,x,x2); %f(x2)
     if f1>f2
         a(k+1)=x1; %ψάχνουμε στο (x1κ,bκ]
         x1=x2; %x1(κ+1)=x2κ
         b(k+1)=b(k);
         x2=a(k+1)+gamma*(b(k+1)-a(k+1)); %x2(κ+1)=a(κ+1)+γ(b(k+1)-a(k+1))
     elseif f2>f1
         b(k+1)=x2; %ψάχνουμε στο [aκ,x2κ)
         x2=x1; %x2(κ+1)=x1κ
         a(k+1)=a(k);
         x1=a(k+1)+(1-gamma)*(b(k+1)-a(k+1)); %x1(κ+1)=a(κ+1)+(1-γ)(b(k+1)-a(k+1))
     else
         a(k+1)=x1+0.001;
         b(k+1)=b(k);
     end
     k=k+1;
 end
 ak=a;
 bk=b;
end