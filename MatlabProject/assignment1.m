clc
clf
syms x
f1(x)=(x-1)^3+((x-4)^2)*cos(x);
f2(x)=exp(-2*x)+(x-2)^2;
f3(x)=x^2*log(0.5*x)+(sin(0.2*x))^2;

%ΘΕΜΑ 1
fprintf('ΘΕΜΑ 1\n\n')
%σταθερό l=0.01
l=0.01;
e=[0.0001 0.0002 0.0005 0.001 0.003];
min1=zeros(5);
min2=zeros(5);
min3=zeros(5);
fun1=zeros(5);
fun2=zeros(5);
fun3=zeros(5);
%για την f1
for i=1:5
    [a11,b11]=bisectormethod(f1,0,3,e(i),l); %σε κάθε γραμμή 
    %υπάρχουν τα ακ,βκ για συγκεκριμένο ε[i] και l
    fprintf('Το τελικό διάστημα είναι: [%d,%d] μετά από %d επαναλήψεις\n', a11(length(a11)),b11(length(a11)),length(a11))
    min1(i)=(a11(length(a11))+b11(length(a11)))/2;
    fun1(i)=subs(f1,x,min1(i));
end
figure (1)
title('f1min for different e')
hold on
stem(e,fun1)
hold off
%για την f2
fprintf('\n')
for i=1:5
    [a12,b12]=bisectormethod(f2,0,3,e(i),l); %σε κάθε γραμμή 
    %υπάρχουν τα ακ,βκ για συγκεκριμένο ε[i] και l
    fprintf('Το τελικό διάστημα είναι: [%d,%d] μετά από %d επαναλήψεις\n', a12(length(a12)),b12(length(a12)),length(a12))
    min2(i)=(a12(length(a12))+b12(length(a12)))/2;
    fun2(i)=subs(f2,x,min2(i));
end
figure (2)
title('f2min for different e')
hold on
stem(e,fun2)
hold off
%για την f3
fprintf('\n')
for i=1:5
    [a13,b13]=bisectormethod(f3,0,3,e(i),l); %σε κάθε γραμμή 
    %υπάρχουν τα ακ,βκ για συγκεκριμένο ε[i] και l
    fprintf('Το τελικό διάστημα είναι: [%d,%d] μετά από %d επαναλήψεις\n', a13(length(a13)),b13(length(a13)),length(a13))
    min3(i)=(a13(length(a13))+b13(length(a13)))/2;
    fun3(i)=subs(f3,x,min3(i));
end
figure (3)
title('f3min for different e')
hold on
stem(e,fun3)
hold off


%σταθερό ε=0.001
fprintf('\n')
e=0.001;
l=[0.01 0.02 0.04 0.06 0.09];
%για την f1
for i=1:5
    [ae11,be11]=bisectormethod(f1,0,3,e,l(i)); %σε κάθε γραμμή 
    %υπάρχουν τα ακ,βκ για συγκεκριμένο l[i] και ε
    fprintf('Το τελικό διάστημα είναι: [%d,%d] μετά από %d επαναλήψεις\n', ae11(length(ae11)),be11(length(ae11)),length(ae11))
    min1(i)=(ae11(length(ae11))+be11(length(ae11)))/2;
    fun1(i)=subs(f1,x,min1(i));
    figure (4)
    title('ak, bk for different l in f1')
    hold on
    plot(1:length(ae11),ae11)
    plot(1:length(ae11),be11)
    hold off
end
figure (5)
title('f1min for different l')
hold on
stem(l,fun1)
hold off
%για την f2
fprintf('\n')
for i=1:5
    [ae12,be12]=bisectormethod(f2,0,3,e,l(i)); %σε κάθε γραμμή 
    %υπάρχουν τα ακ,βκ για συγκεκριμένο l[i] και ε
    fprintf('Το τελικό διάστημα είναι: [%d,%d] μετά από %d επαναλήψεις\n', ae12(length(ae12)),be12(length(ae12)),length(ae12))
    min2(i)=(ae12(length(ae12))+be12(length(ae12)))/2;
    fun2(i)=subs(f2,x,min2(i));
    figure (6)
    title('ak, bk for different l in f2')
    hold on
    plot(1:length(ae12),ae12)
    plot(1:length(ae12),be12)
    hold off
end
figure (7)
title('f2min for different l')
hold on
stem(l,fun2)
hold off
%για την f3
fprintf('\n')
for i=1:5
    [ae13,be13]=bisectormethod(f3,0,3,e,l(i)); %σε κάθε γραμμή 
    %υπάρχουν τα ακ,βκ για συγκεκριμένο ε[i] και l
    fprintf('Το τελικό διάστημα είναι: [%d,%d] μετά από %d επαναλήψεις\n', ae13(length(ae13)),be13(length(ae13)),length(ae13))
    min3(i)=(ae13(length(ae13))+be13(length(ae13)))/2;
    fun3(i)=subs(f3,x,min3(i));
    figure (8)
    title('ak, bk for different l in f3')
    hold on
    plot(1:length(ae13),ae13)
    plot(1:length(ae13),be13)
    hold off
end
figure (9)
title('f3min for different l')
hold on
stem(l,fun3)
hold off

%ΘΕΜΑ 2
fprintf('\nΘΕΜΑ 2\n\n')
%για την f1
for i=1:5
    [axrtom1,bxrtom1]=xrysostomeasmethod(f1,0,3,l(i)) ; %σε κάθε γραμμή 
    %υπάρχουν τα ακ,βκ για συγκεκριμένο l[i] και ε
    fprintf('Το τελικό διάστημα είναι: [%d,%d] μετά από %d επαναλήψεις\n', axrtom1(length(axrtom1)),bxrtom1(length(axrtom1)),length(axrtom1))
    min1(i)=(axrtom1(length(axrtom1))+bxrtom1(length(axrtom1)))/2;
    fun1(i)=subs(f1,x,min1(i));
    figure (10)
    title('ak, bk for different l in f1')
    hold on
    plot(1:length(axrtom1),axrtom1)
    plot(1:length(axrtom1),bxrtom1)
    hold off
end
figure (11)
title('f1min for different l')
hold on
stem(l,fun1)
hold off
%για την f2
fprintf('\n')
for i=1:5
    [axrtom2,bxrtom2]=xrysostomeasmethod(f2,0,3,l(i)); %σε κάθε γραμμή 
    %υπάρχουν τα ακ,βκ για συγκεκριμένο l[i] και ε
    fprintf('Το τελικό διάστημα είναι: [%d,%d] μετά από %d επαναλήψεις\n', axrtom2(length(axrtom2)),bxrtom2(length(axrtom2)),length(axrtom2))
    min2(i)=(axrtom2(length(axrtom2))+bxrtom2(length(axrtom2)))/2;
    fun2(i)=subs(f2,x,min2(i));
    figure (12)
    title('ak, bk for different l in f2')
    hold on
    plot(1:length(axrtom2),axrtom2)
    plot(1:length(axrtom2),bxrtom2)
    hold off
end
figure (13)
title('f2min for different l')
hold on
stem(l,fun2)
hold off
%για την f3
fprintf('\n')
for i=1:5
    [axrtom3,bxrtom3]=xrysostomeasmethod(f3,0,3,l(i)); %σε κάθε γραμμή 
    %υπάρχουν τα ακ,βκ για συγκεκριμένο ε[i] και l
    fprintf('Το τελικό διάστημα είναι: [%d,%d] μετά από %d επαναλήψεις\n', axrtom3(length(axrtom3)),bxrtom3(length(axrtom3)),length(axrtom3))
    min3(i)=(axrtom3(length(axrtom3))+bxrtom3(length(axrtom3)))/2;
    fun3(i)=subs(f3,x,min3(i));
    figure (14)
    title('ak, bk for different l in f3')
    hold on
    plot(1:length(axrtom3),axrtom3)
    plot(1:length(axrtom3),bxrtom3)
    hold off
end
figure (15)
title('f3min for different l')
hold on
stem(l,fun3)
hold off


%ΘΕΜΑ 3 
fprintf('\nΘΕΜΑ 3\n\n')
%για την f1
for i=1:5
    [afib1,bfib1]=fibonaccimethod(f1,0,3,l(i)) ; %σε κάθε γραμμή 
    %υπάρχουν τα ακ,βκ για συγκεκριμένο l[i] και ε
    fprintf('Το τελικό διάστημα είναι: [%d,%d] μετά από %d επαναλήψεις\n', afib1(length(afib1)),bfib1(length(afib1)),length(afib1))
    min1(i)=(afib1(length(afib1))+bfib1(length(afib1)))/2;
    fun1(i)=subs(f1,x,min1(i));
    figure (16)
    title('ak, bk for different l in f1')
    hold on
    plot(1:length(afib1),afib1)
    plot(1:length(afib1),bfib1)
    hold off
end
figure (17)
title('f1min for different l')
hold on
stem(l,fun1)
hold off
%για την f2
fprintf('\n')
for i=1:5
    [afib2,bfib2]=fibonaccimethod(f2,0,3,l(i)); %σε κάθε γραμμή 
    %υπάρχουν τα ακ,βκ για συγκεκριμένο l[i] και ε
    fprintf('Το τελικό διάστημα είναι: [%d,%d] μετά από %d επαναλήψεις\n', afib2(length(afib2)),bfib2(length(afib2)),length(afib2))
    min2(i)=(afib2(length(afib2))+bfib2(length(afib2)))/2;
    fun2(i)=subs(f2,x,min2(i));
    figure (18)
    title('ak, bk for different l in f2')
    hold on
    plot(1:length(afib2),afib2)
    plot(1:length(afib2),bfib2)
    hold off
end
figure (19)
title('f2min for different l')
hold on
stem(l,fun2)
hold off
%για την f3
fprintf('\n')
for i=1:5
    [afib3,bfib3]=fibonaccimethod(f3,0,3,l(i)); %σε κάθε γραμμή 
    %υπάρχουν τα ακ,βκ για συγκεκριμένο ε[i] και l
    fprintf('Το τελικό διάστημα είναι: [%d,%d] μετά από %d επαναλήψεις\n', afib3(length(afib3)),bfib3(length(afib3)),length(afib3))
    min3(i)=(afib3(length(afib3))+bfib3(length(afib3)))/2;
    fun3(i)=subs(f3,x,min3(i));
    figure (20)
    title('ak, bk for different l in f3')
    hold on
    plot(1:length(afib3),afib3)
    plot(1:length(afib3),bfib3)
    hold off
end
figure (21)
title('f3min for different l')
hold on
stem(l,fun3)
hold off


%ΘΕΜΑ 4
fprintf('\nΘΕΜΑ 4\n\n')
%για την f1
for i=1:5
    [adiff1,bdiff1]=bisectormethoddif(f1,0,3,l(i)) ; %σε κάθε γραμμή 
    %υπάρχουν τα ακ,βκ για συγκεκριμένο l[i] και ε
    fprintf('Το τελικό διάστημα είναι: [%d,%d] μετά από %d επαναλήψεις\n', adiff1(length(adiff1)),bdiff1(length(adiff1)),length(adiff1))
    min1(i)=(adiff1(length(adiff1))+bdiff1(length(adiff1)))/2;
    fun1(i)=subs(f1,x,min1(i));
    figure (22)
    title('ak, bk for different l in f1')
    hold on
    plot(1:length(adiff1),adiff1)
    plot(1:length(adiff1),bdiff1)
    hold off
end
figure (23)
title('f1min for different l')
hold on
stem(l,fun1)
hold off
%για την f2
fprintf('\n')
for i=1:5
    [adiff2,bdiff2]=bisectormethoddif(f2,0,3,l(i)); %σε κάθε γραμμή 
    %υπάρχουν τα ακ,βκ για συγκεκριμένο l[i] και ε
    fprintf('Το τελικό διάστημα είναι: [%d,%d] μετά από %d επαναλήψεις\n', adiff2(length(adiff2)),bdiff2(length(adiff2)),length(adiff2))
    min2(i)=(adiff2(length(adiff2))+bdiff2(length(adiff2)))/2;
    fun2(i)=subs(f2,x,min2(i));
    figure (24)
    title('ak, bk for different l in f2')
    hold on
    plot(1:length(adiff2),adiff2)
    plot(1:length(adiff2),bdiff2)
    hold off
end
figure (25)
title('f2min for different l')
hold on
stem(l,fun2)
hold off
%για την f3
fprintf('\n')
for i=1:5
    [adiff3,bdiff3]=bisectormethoddif(f3,0,3,l(i)); %σε κάθε γραμμή 
    %υπάρχουν τα ακ,βκ για συγκεκριμένο ε[i] και l
    fprintf('Το τελικό διάστημα είναι: [%d,%d] μετά από %d επαναλήψεις\n', adiff3(length(adiff3)),bdiff3(length(adiff3)),length(adiff3))
    min3(i)=(adiff3(length(adiff3))+bdiff3(length(adiff3)))/2;
    fun3(i)=subs(f3,x,min3(i));
    figure (26)
    title('ak, bk for different l in f3')
    hold on
    plot(1:length(adiff3),adiff3)
    plot(1:length(adiff3),bdiff3)
    hold off
end
figure (27)
title('f3min for different l')
hold on
stem(l,fun3)
hold off




