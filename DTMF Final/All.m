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

%detect=0.1.*ones(0,999);

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

% disp ([k d0 d1 d2 d3 d4 d5 d6 d7 d8 d9]);

end

d1out=[0 d1];d2out=[0 d2];d3out=[0 d3];
d4out=[0 d4];d5out=[0 d5];d6out=[0 d6];
d7out=[0 d7];d8out=[0 d8];d9out=[0 d9];
             d0out=[0 d0];

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


>> space=zeros(1,100);
>> axis([0.5 1.25 -1.5 1.5]);

>> Phone=[d5out space d5out space d3out space d3out space d1out space];

>> Myphone=[d0out space d9out space d0out space d1out space d5out space d5out space d8out space d4out space d9out space d2out space d5out];
>> load('touch.mat')
>> a1=x1(1:1000);
>> a2=x1(1101:2100);
>> a3=x1(2201:3200);
>> a4=x1(3301:4300);
>> a5=x1(4401:5400);
>> a6=x1(5501:6500);
>> a7=x1(6601:7600);
>> number=[a1 a2 a3 a4 a5 a6 a7];


    
>> fa1=fft(a1);
>> fa2=fft(a2);
>> fa3=fft(a3);
>> fa4=fft(a4);
>> fa5=fft(a5);
>> fa6=fft(a6);
>> fa7=fft(a7);
>> ft=[fa1 fa2 fa3 fa4 fa5 fa6 fa7];
>> decoded=[d4out d9out  d1out d5out  d8out  d7out  d7out ];
X=fft8;
ab=abs(X(1:600));
E=pow2(ab);

[a,b]=max(E)
w=(b-1)./length(X) .*2.*pi
E(1,b)=0;
[a,b]=max(E)
w=(b-1)./length(X) .*2.*pi

