%#1
>> load('touch.mat')


%////
%#2
>> a1=x1(1:1000);
>> a2=x1(1101:2100);
>> a3=x1(2201:3200);
>> a4=x1(3301:4300);
>> a5=x1(4401:5400);
>> a6=x1(5501:6500);
>> a7=x1(6601:7600);
>> number=[a1 a2 a3 a4 a5 a6 a7];


%////
%#3
>> fa1=fft(a1);
>> fa2=fft(a2);
>> fa3=fft(a3);
>> fa4=fft(a4);
>> fa5=fft(a5);
>> fa6=fft(a6);
>> fa7=fft(a7);


%////
%#4
wr=[0.5341 0.5906 0.6535];
wc=[0.9299 1.0242 1.1310];

%First number
plot(abs(fa1))
title('First number   (0.5906 & 0.9299)')
xlabel('Frequency Domain')
ylabel('Amplitude')
axis([0 500 0 600])
X=fa1;
ab=abs(X(1:600));
E=pow2(ab);
[a,b]=max(E);
w1=(b-1)./length(X) .*2.*pi;
E(1,b)=0;
[a,b]=max(E);
w1=(b-1)./length(X) .*2.*pi;
hold on
plot(abs(fft4))
one=[wr(2) wc(1)];

%Second number
figure
plot(abs(fa2))
title('Second number   (0.6535 & 1.310)')
xlabel('Frequency Domain')
ylabel('Amplitude')
axis([0 500 0 600])
X=fa2;
ab=abs(X(1:600));
E=pow2(ab);
[a,b]=max(E);
w2=(b-1)./length(X) .*2.*pi;
E(1,b)=0;
[a,b]=max(E);
w2=(b-1)./length(X) .*2.*pi;
hold on
plot(abs(fft9))
two=[wr(3) wc(3)];

%Third number
figure
plot(abs(fa3))
title('Third number   (0.5341 & 0.9299)')
xlabel('Frequency Domain')
ylabel('Amplitude')
axis([0 500 0 600])
X=fa3;
ab=abs(X(1:600));
E=pow2(ab);
[a,b]=max(E);
w3=(b-1)./length(X) .*2.*pi;
E(1,b)=0;
[a,b]=max(E);
w3=(b-1)./length(X) .*2.*pi;
hold on
plot(abs(fft1))
three=[wr(1) wc(1)];

%Forth number
figure
plot(abs(fa4))
title('Forth number   (0.5906 & 1.0242)')
xlabel('Frequency Domain')
ylabel('Amplitude')
axis([0 500 0 600])
X=fa4;
ab=abs(X(1:600));
E=pow2(ab);
[a,b]=max(E);
w4=(b-1)./length(X) .*2.*pi;
E(1,b)=0;
[a,b]=max(E);
w4=(b-1)./length(X) .*2.*pi;
hold on
plot(abs(fft5))
four=[wr(2) wc(2)];

%Fifth number
figure
plot(abs(fa5))
title('Fifth number   (0.6535 & 1.0242)')
xlabel('Frequency Domain')
ylabel('Amplitude')
axis([0 500 0 600])
X=fa5;
ab=abs(X(1:600));
E=pow2(ab);
[a,b]=max(E);
w5=(b-1)./length(X) .*2.*pi;
E(1,b)=0;
[a,b]=max(E);
w5=(b-1)./length(X) .*2.*pi;
hold on
plot(abs(fft8))
five=[wr(3) wc(2)];

%Sixth number
figure
plot(abs(fa6))
title('Sixth number   (0.6535 & 0.9299)')
xlabel('Frequency Domain')
ylabel('Amplitude')
axis([0 500 0 600])
X=fa6;
ab=abs(X(1:600));
E=pow2(ab);
[a,b]=max(E);
w6=(b-1)./length(X) .*2.*pi;
E(1,b)=0;
[a,b]=max(E);
w6=(b-1)./length(X) .*2.*pi;
hold on
plot(abs(fft7))
six=[wr(3) wc(1)];

%seventh number
figure
plot(abs(fa7))
title('Seventh Number   (0.6535 & 0.9299)')
xlabel('Frequency Domain')
ylabel('Amplitude')
axis([0 500 0 600])
X=fa7;
ab=abs(X(1:600));
E=pow2(ab);
[a,b]=max(E);
w7=(b-1)./length(X) .*2.*pi;
E(1,b)=0;
[a,b]=max(E);
w7=(b-1)./length(X) .*2.*pi;
hold on
plot(abs(fft7))
seven=[wr(3) wc(1)];
detect=[4 9 1 5 8 7 7];
G=[one two three four five six seven];
disp('    NUM       Wrow      Wcolumn   Detected')
for h=1:7  
    disp([h   G(2*h-1)   G(2*h)   detect(h)]);
end
