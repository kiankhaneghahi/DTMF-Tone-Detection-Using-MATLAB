% #1
d0in = sin(0.7217.*k)+sin(1.0247.*k); 

d1in = sin(0.5346.*k)+sin(0.9273.*k); 

d2in = sin(0.5346.*k)+sin(1.0247.*k); 

d3in = sin(0.5346.*k)+sin(1.1328.*k); 

d4in = sin(0.5906.*k)+sin(0.9273.*k); 

d5in = sin(0.5906.*k)+sin(1.0247.*k); 

d6in = sin(0.5906.*k)+sin(1.1328.*k); 

d7in = sin(0.6535.*k)+sin(0.9273.*k); 

d8in = sin(0.6535.*k)+sin(1.0247.*k); 

d9in = sin(0.6535.*k)+sin(1.1328.*k);


%////
%#2
d0=zeros(0,999);
d1=zeros(0,999);
d2=zeros(0,999);
d3=zeros(0,999);
d4=zeros(0,999);
d5=zeros(0,999);
d6=zeros(0,999);
d7=zeros(0,999);
d8=zeros(0,999);
d9=zeros(0,999);
for k= 1:999

d0in = sin(0.7217.*k)+sin(1.0247.*k); d0(k)=d0in;
d1in = sin(0.5346.*k)+sin(0.9273.*k); d1(k)=d1in;
d2in = sin(0.5346.*k)+sin(1.0247.*k); d2(k)=d2in;
d3in = sin(0.5346.*k)+sin(1.1328.*k); d3(k)=d3in;
d4in = sin(0.5906.*k)+sin(0.9273.*k); d4(k)=d4in;
d5in = sin(0.5906.*k)+sin(1.0247.*k); d5(k)=d5in;
d6in = sin(0.5906.*k)+sin(1.1328.*k); d6(k)=d6in;
d7in = sin(0.6535.*k)+sin(0.9273.*k); d7(k)=d7in;
d8in = sin(0.6535.*k)+sin(1.0247.*k); d8(k)=d8in;
d9in = sin(0.6535.*k)+sin(1.1328.*k); d9(k)=d9in;
end
d1out=[0 d1];d2out=[0 d2];d3out=[0 d3];
d4out=[0 d4];d5out=[0 d5];d6out=[0 d6];
d7out=[0 d7];d8out=[0 d8];d9out=[0 d9];
             d0out=[0 d0];



%////
%#3
sound(d0out,8192)
sound(d1out,8192)
sound(d2out,8192)
sound(d3out,8192)
sound(d4out,8192)
sound(d5out,8192)
sound(d6out,8192)
sound(d7out,8192)
sound(d8out,8192)
sound(d9out,8192)


%////
%#4
             
fft0=fft(d0out);
fft1=fft(d1out); 
fft2=fft(d2out); 
fft3=fft(d3out); 
fft4=fft(d4out); 
fft5=fft(d5out); 
fft6=fft(d6out); 
fft7=fft(d7out); 
fft8=fft(d8out); 
fft9=fft(d9out);


%////
%#5
plot(abs(fft0))
title('fft(d0)')
xlabel('Frequency Domain')
ylabel('Amplitude')
axis([0 500 0 600])
figure
plot(abs(fft1))
title('fft(d1)')
xlabel('Frequency Domain')
ylabel('Amplitude')
axis([0 500 0 600])
figure
plot(abs(fft2))
title('fft(d2)')
xlabel('Frequency Domain')
ylabel('Amplitude')
axis([0 500 0 600])
figure
plot(abs(fft3))
title('fft(d3)')
xlabel('Frequency Domain')
ylabel('Amplitude')
axis([0 500 0 600])
figure
plot(abs(fft4))
title('fft(d4)')
xlabel('Frequency Domain')
ylabel('Amplitude')
axis([0 500 0 600])
figure
plot(abs(fft5))
title('fft(d5)')
xlabel('Frequency Domain')
ylabel('Amplitude')
axis([0 500 0 600])
figure
plot(abs(fft6))
title('fft(d6)')
xlabel('Frequency Domain')
ylabel('Amplitude')
axis([0 500 0 600])
figure
plot(abs(fft7))
title('fft(d7)')
xlabel('Frequency Domain')
ylabel('Amplitude')
axis([0 500 0 600])
figure
plot(abs(fft8))
title('fft(d8)')
xlabel('Frequency Domain')
ylabel('Amplitude')
axis([0 500 0 600])
figure
plot(abs(fft9))
title('fft(d9)')
xlabel('Frequency Domain')
ylabel('Amplitude')
axis([0 500 0 600])


%////
%#6
>> space=zeros(1,100);
>> axis([0.5 1.25 -.001 0.001]);


%////
%#7
>> Phone=[d5out space d5out space d3out space d3out space d1out space];

>> sound(Phone,8192)



%////
%#8
>> Myphone=[d0out space d9out space d0out space d1out space d5out space d5out space d8out space d4out space d9out space d2out space d5out];
sound(Myphone,8192)