function [ak, bk]=fibonaccimethod(f,a1,b1,l)
 syms x
 g=symvar(f);
 f=subs(f,g,x);
 a(1)=a1;
 b(1)=b1;
 k=1;
 n=1;
 while (b(1)-a(1))/fibonacci(n)>=l %βρίσκουμε επαναλήψεις n
     n=n+1;
 end
 %fprinf('%d',n)
 x1=a(k)+(fibonacci(n-k-1)/fibonacci(n-k+1))*(b(k)-a(k));
 x2=a(k)+(fibonacci(n-k)/fibonacci(n-k+1))*(b(k)-a(k));
 while abs(b(k)-a(k))>=l && n-k>=2
     f1=subs(f,x,x1); %f(x1)
     f2=subs(f,x,x2); %f(x2)
     if f1>f2
         a(k+1)=x1; %ψάχνουμε στο (x1κ,bκ]
         b(k+1)=b(k);
         x1=x2; %x1(κ+1)=x2κ
         x2=a(k+1)+(fibonacci(n-k-1)/fibonacci(n-k))*(b(k+1)-a(k+1)); %x2(κ+1)=a(k+1)+(f(n-k)/f(n-k+1))(b(k+1)-a(k+1))
     elseif f2>f1
         b(k+1)=x2; %ψάχνουμε στο [aκ,x2κ)
         a(k+1)=a(k);
         x2=x1; %x2(κ+1)=x1κ
         x1=a(k+1)+(fibonacci(n-k-2)/fibonacci(n-k))*(b(k+1)-a(k+1)); %x1(κ+1)=a(k+1)+(f(n-k-2)/f(n-k))(b(k+1)-a(k+1))
     else
         a(k+1)=a(k);
         b(k+1)=b(k)+0.0001;
     end
     k=k+1;
 end
 %k=k-1 -> %=n-2
 %Στο τέλος κάθε επανάληψης while για συγκεκριμένο κ
 % το x1 και το x2 είναι τα x1(κ) καιx2(κ) άρα όταν 
 % k=n-2 το x1 το x2 
 % θα είναι τα x1(n-1) και x2(n-1)
 x1n=x1; %x1n=x1(n-1) 
 x2n=x1+0.0001; %x2n=x1(n-1)+e 
 f1=subs(f,x,x1n); %f(x1n)
 f2=subs(f,x,x2n); %f(x2n)
 if f1>f2
     a(n)=x1n;
     b(n)=b(n-1);
 else
     a(n)=a(n-1);
     b(n)=x2n;
 end
 ak=a;
 bk=b;
end